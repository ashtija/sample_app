ENV["RAILS_ENV"] ||= 'test'

require 'spec_helper'

# Add this to load Capybara integration:
require 'capybara'
require 'capybara/rspec'
require 'capybara/rails'
require "selenium-webdriver"




Capybara.configure do |capy_config|
 # do somthing
  capy_config.javascript_driver = :selenium
  capy_config.server_port = 3001
  capy_config.app_host = "localhost"
end


