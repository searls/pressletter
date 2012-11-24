require 'rspec'
require 'gimme'
require 'rspec/given'
require 'pressletter'


module GimmeMatchers
  class Contains
    def initialize(expected)
      @expected = expected
    end
    def matches?(actual)
      actual.include?(@expected)
    end
  end
  def contains(expected)
    Contains.new(expected)
  end
end
include GimmeMatchers

RSpec.configure do |config|
  config.mock_framework = Gimme::RSpecAdapter

  config.after(:each) do
    Gimme.reset
  end
end