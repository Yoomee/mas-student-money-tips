require 'yaml'
require 'csv'

tools_data = YAML.load_file('db/seeds/tools.yml')
tools = {}
tools_data.each do |tool|
  tools[tool["code"]] = StudentMoneyTips::Tool.create(:title_en => tool["title"], :link_text_en => 'Go to the tool', :url => tool["url"])
end


scenarios_yaml = 'db/seeds/scenarios.yml'
unless File.exists?(scenarios_yaml)
  tool_codes = [
    %w{HC BP LC CT DT},
    %w{HC BP CT DT},
    %w{SMC HC BP CT DT},
    %w{BP HC LC DT},
    %w{SMC BP HC CT DT},
    %w{SMC BP HC LC CT DT},
    %w{HC BP LC CT DT},
    %w{HC BP CT DT}
  ]

  rows = CSV.new(File.read('db/seeds/tips_scenarios.csv')).to_a

  scenarios = rows.shift.compact.collect{|s| {'name' => s.downcase, 'tips' => []}}

  rows.each do |row|
    tip = row.shift
    scenarios.each_with_index do |scenario, idx|
      if row[idx].to_s.strip.length > 0
        scenario['tips'] << tip
      end
      scenario['tools'] = tool_codes[idx]
    end
  end
  
  File.open(scenarios_yaml, 'w') {|f| f.puts scenarios.to_yaml}
end

scenarios_data = YAML.load_file(scenarios_yaml)
scenarios_data.each do |scenario|
  s = StudentMoneyTips::Scenario.new(:name_en => scenario["name"])
  scenario["tips"].each do |tip|
    s.tips.build(:text_en => tip)
  end
  scenario["tools"].each do |code|
    s.tools << tools[code]
  end
  s.save
end