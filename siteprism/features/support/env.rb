require 'capybara/cucumber'
require 'selenium-webdriver'
require 'site_prism'
require 'rspec'
require_relative 'page_helper.rb'

World(PageObjects)
ENVIRONMENT = ENV['ENVIRONMENT']
CONFIG = YAML.load_file(File.dirname(__FILE__) + "/environments/#{ENVIRONMENT}.yml")

Capybara.configure do |config|
    config.default_driver = :selenium_chrome
    config.app_host = CONFIG['url']
    config.default_max_wait_time = 10
end
