module Letterpress::Shell
  class CLI
    include ::Letterpress::Core

    def initialize(config = ::Letterpress::Values::Config.new, reads_input = ReadsInput.new, writes_output = WritesOutput.new)
      @config = config
      @reads_input = reads_input
      @writes_output = writes_output
    end

    def main
      @writes_output.write(
        format_words(
          find_words(load_dictionary(@config.dictionary_location), create_letters(@reads_input.read))
        )
      )
    end
  end
end