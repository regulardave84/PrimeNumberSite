require 'capybara/cucumber'
require 'rspec'

Capybara.default_driver = :selenium
CONFIG = YAML.load_file('features/support/prime_number_config.yml')