require 'rspec'
require 'capybara'
require 'cucumber'
require 'pry'
require 'yaml'
require 'capybara/dsl'
require 'capybara/rspec'
require 'selenium-webdriver'

Capybara.configure do |config|
  config.default_driver = :selenium
  config.default_max_wait_time = 30
  Capybara.page.driver.browser.manage.window.maximize
end

ENVIRONMENT = ENV['ENVIRONMENT']

CONFIG = YAML.load_file(File.dirname(__FILE__) + "/config/#{ENVIRONMENT}.yml")

