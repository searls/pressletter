module Letterpress::Shell
  class CLI
    include Letterpress::Core

    def initialize(config = Letterpress::Values::Config.new(File.expand_path("../../../../assets/dictionary.txt", __FILE__)), reads_input = ReadsInput.new, writes_output = WritesOutput.new)
      @config = config
      @reads_input = reads_input
      @writes_output = writes_output
    end

    def main
      @writes_output.write(print_words(solve(@config, create_letters(@reads_input.read))))
    end
  end
end