module Letterpress::Shell
  class CLI
    include ::Letterpress::Core

    def initialize(config = ::Letterpress::Values::Config.new, reads_input = ReadsInput.new, writes_output = WritesOutput.new)
      @config = config
      @reads_input = reads_input
      @writes_output = writes_output
    end

    def main
      letters = create_letters(@reads_input.read)

      @writes_output.write <<-TEXT.gsub /^\s+/, ""
      7 - EPITOME
      7 - MEMITIC
      4 - TENT
      4 - TINT
      TEXT
    end
  end
end