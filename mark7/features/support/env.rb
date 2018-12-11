require 'capybara'
require 'capybara/cucumber'

#objeto default_driver => testar no chrome = selenium_chrome
Capybara.configure do |config|
    config.default_driver = :selenium_chrome
end

#Capybara => Selenium => API do WebDriver = chromedriver (bin)
#   => Chrome