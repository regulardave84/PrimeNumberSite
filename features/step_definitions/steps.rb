Given(/^I am on the Prime Number site$/) do
  config = YAML.load_file 'features/support/prime_number_config.yml'
  url = config['prime_number_url'] 
  visit url 
end

Given(/^I enter the value "(.+)"$/) do |value|
  fill_in 'number', :with => value
end

When(/^I click "Is it prime\?"$/) do
  click_button 'Is it prime?'
end

Then(/^the message "([^"]*)" appears$/) do |msg|
  find_field('result').value.should eq msg
end
