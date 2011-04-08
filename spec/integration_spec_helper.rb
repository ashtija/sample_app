ENV["RAILS_ENV"] ||= 'test'

require 'spec_helper'
require 'selenium-webdriver'

RSpec.configure do |se_config|
  # Transactional fixtures make Selenium an unhappy camper
  se_config.use_transactional_fixtures = false

  se_config.before do
    if [:js]
      DatabaseCleaner.strategy = :truncation
    else
      DatabaseCleaner.strategy = :transaction
    end
    DatabaseCleaner.start
  end

  se_config.after do
    DatabaseCleaner.clean
  end

end
