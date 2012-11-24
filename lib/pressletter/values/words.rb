module Pressletter::Values
  class Words
    def initialize(words)
      @words = words
    end

    def as_array
      @words
    end
  end
end