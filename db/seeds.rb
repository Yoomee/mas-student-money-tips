require 'yaml'
scenarios = YAML.load_file('db/seeds/scenarios.yml')
scenarios.each do |scenario|
  s = StudentMoneyTips::Scenario.new(:name_en => scenario["name"])
  scenario["tips"].each do |tip|
    s.tips.build(:text_en => tip)
  end
  s.save
end
