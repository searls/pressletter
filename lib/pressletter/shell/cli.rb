module Pressletter::Shell
  class CLI
    include Pressletter::Core

    def initialize(config = Pressletter::default_config, reads_input = ReadsInput.new, writes_output = WritesOutput.new)
      @config = config
      @reads_input = reads_input
      @writes_output = writes_output
    end

    def main
      @writes_output.write(print_words(solve(@config, create_letters(@reads_input.read))))
    end
  end
end