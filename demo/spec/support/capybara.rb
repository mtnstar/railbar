require 'capybara/rails'
require 'selenium/webdriver'

Capybara.register_driver :firefox do |app|
  options = Selenium::WebDriver::Firefox::Options.new
  
  options.add_argument('--headless') unless ENV['HEADLESS'] == 'false'
  options.add_argument('--disable-gpu') # Recommended for headless mode
  options.add_argument('--no-sandbox') # Recommended for CI environments

  Capybara::Selenium::Driver.new(
    app,
    browser: :firefox,
    options: options
  )
end

Capybara.default_driver = :firefox
Capybara.javascript_driver = :firefox
