module Letterpress::Values
  class Letters
    def initialize(letters)
      @letters = letters
    end

    def as_array
      @letters
    end

    def as_hash
      @hash ||= @letters.inject({}) do |h,l|
        h[l] = h[l] ? h[l] + 1 : 1
        h
      end
    end
  end
end