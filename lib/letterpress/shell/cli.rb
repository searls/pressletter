module Letterpress::Shell
  class CLI
    include Letterpress::Core

    def initialize(config = Letterpress::Values::Config.new(File.expand_path("../../../../assets/official_scrabble_dictionary_4.txt", __FILE__)), reads_input = ReadsInput.new, writes_output = WritesOutput.new)
      @config = config
      @reads_input = reads_input
      @writes_output = writes_output
    end

    def main
      @writes_output.write(
        print_words(
          sort_words(
            find_words(load_dictionary(@config.dictionary_location), create_letters(@reads_input.read))
          )
        )
      )
    end
  end
end