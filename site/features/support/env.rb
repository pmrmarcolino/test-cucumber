require 'capybara/cucumber'
require 'selenium-webdriver'

#https://www.rubydoc.info/gems/capybara/2.2.1/Capybara%2FSession:visit
Capybara.configure do |config|
    config.default_driver = :selenium_chrome
    config.app_host = 'https://automacaocombatista.herokuapp.com'
end

Capybara.register_driver :https_chrome do |app|
    options = Selenium::WebDriver::Chrome::Options.new
    options.add_argument('--allow-insecure-localhost')
    options.add_argument('--ignore-certificate-errors')
  
    Capybara::Selenium::Driver.new(
      app,
      browser: :chrome,
      capabilities: [options]
    )
end

Capybara.register_driver :headless_https_chrome do |app|
    options = Selenium::WebDriver::Chrome::Options.new
    options.add_argument('--headless')
    options.add_argument('--allow-insecure-localhost')
    options.add_argument('--ignore-certificate-errors')
  
    Capybara::Selenium::Driver.new(
      app,
      browser: :chrome,
      capabilities: [options]
    )
end