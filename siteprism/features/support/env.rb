require 'capybara/cucumber'
require 'selenium-webdriver'
require 'site_prism'
require 'rspec'

Capybara.configure do |config|
    config.default_driver = :selenium_chrome
    config.app_host = 'https://automacaocombatista.herokuapp.com'
end
