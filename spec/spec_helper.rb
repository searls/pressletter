require 'rspec'
require 'gimme'
require 'rspec/given'

RSpec.configure do |config|
  config.mock_framework = Gimme::RSpecAdapter


  config.after(:each) do
    Gimme.reset
  end
end