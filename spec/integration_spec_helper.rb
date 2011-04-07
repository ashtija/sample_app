require 'spec_helper'

# Add this to load Capybara integration:
require 'capybara/rspec'
require 'capybara/rails'
require 'selenium-webdriver'
require 'selenium-client'

RSpec.configure do |config|

  config.use_transactional_fixtures = false

  config.before :each do
    DatabaseCleaner.start
  end
  config.after :each do
    DatabaseCleaner.clean
  end

end
