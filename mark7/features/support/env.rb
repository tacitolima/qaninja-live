require 'capybara'
require 'capybara/cucumber'

#objeto default_driver => testar no chrome = selenium_chrome
Capybara.configure do |config|
    config.default_driver = :selenium_chrome
    #iniciar navegador em segundo plano config.default_driver = :selenium_chrome_headless
end

#Capybara => Selenium => API do WebDriver = chromedriver (bin)
#   => Chrome