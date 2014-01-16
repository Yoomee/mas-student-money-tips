require 'yaml'

tools_data = YAML.load_file('db/seeds/tools.yml')
tools = {}
tools_data.each do |tool|
  tools[tool["code"]] = StudentMoneyTips::Tool.create(:title_en => tool["title"], :link_text_en => 'Go to the tool', :url => tool["url"])
end

scenarios_data = YAML.load_file('db/seeds/scenarios.yml')
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