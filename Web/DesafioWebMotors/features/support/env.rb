require "capybara"
require "capybara/cucumber"
require "selenium-webdriver"

CONFIG = YAML.load_file(File.join(Dir.pwd, "features/support/config/#{ENV["ENV_TYPE"]}.yaml"))

case ENV["BROWSER"]
when "firefox"
  @driver = :selenium
when "chrome"
  @driver = :selenium_chrome
when "headless"
  @driver = :selenium_chrome_headless
else
  puts "Invalid Browser"
end

Capybara.configure do |config|
    config.default_driver = :selenium_chrome
    config.app_host = "https://www.webmotors.com.br"
end
