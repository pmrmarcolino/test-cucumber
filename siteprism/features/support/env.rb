require 'capybara/cucumber'
require 'selenium-webdriver'
require 'site_prism'
require 'rspec'
require_relative 'page_helper.rb'

World(PageObjects)

BROWSER = ENV['BROWSER']
ENVIRONMENT = ENV['ENVIRONMENT']

CONFIG = YAML.load_file(File.dirname(__FILE__) + "/environments/#{ENVIRONMENT}.yml")

caps = Selenium::WebDriver::Remote::Capabilities.chrome(
    "goog:chromeOptions" => {"args" => ["--headless", "disable-gpu"]})

Capybara.register_driver :selenium do |app|
    if BROWSER.eql? ('chrome')
        Capybara::Selenium::Driver.new(app, :browser => :chrome)
    elsif BROWSER.eql? ('chrome_headless')
        Capybara::Selenium::Driver.new(app, :browser => :chrome, desired_capabilities: caps)
    elsif BROWSER.eql? ('firefox')
        Capybara::Selenium::Driver.new(app, :browser => :firefox, :marionette =>true)
    elsif BROWSER.eql? ('safari')    
        Capybara::Selenium::Driver.new(app, :browser => :safari)
    end
end

Capybara.configure do |config|
    config.default_driver = :selenium
    config.app_host = CONFIG['url']
    config.default_max_wait_time = 15
end
