module Letterpress::Shell
  class ReadsInput
    def read
      ARGV[0] || gets
    end
  end
end