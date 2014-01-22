require 'yaml'
require 'csv'

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

Rake::Task['student_money_tips:db:seed'].invoke
