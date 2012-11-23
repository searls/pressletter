require 'spec_helper'



module Letterpress
  class CLI

    def initialize(config = Config.new, reads_input = ReadsInput.new, writes_output = WritesOutput.new)
      @config = config
      @reads_input = reads_input
      @writes_output = writes_output
    end

    def main
      @writes_output.write <<-TEXT.gsub /^\s+/, ""
      7 - EPITOME
      7 - MEMITIC
      4 - TENT
      4 - TINT
      TEXT
    end
  end

  class Config
    def directory_location
      #assets/official_scrabble_dictionary_4.txt
      File.expand_path("../..", __FILE__)
    end
  end

  class ReadsInput
    def read

    end
  end

  class WritesOutput
    def write

    end
  end


  describe CLI do
    Given(:config) { gimme(Config) }
    Given(:reads_input) { gimme(ReadsInput) }
    Given(:writes_output) { gimme(WritesOutput) }

    subject { CLI.new(config, reads_input, writes_output) }

    Given { give(config).directory_location { File.expand_path("../../../fixtures/simple_dict.txt", __FILE__)} }

    describe "#main" do
      Given { give(reads_input).read {"eiptctbntymeiphoxvitkmzib"} }

      When { subject.main }
      Then do
        verify(writes_output).write <<-TEXT.gsub /^\s+/, ""
        7 - EPITOME
        7 - MEMITIC
        4 - TENT
        4 - TINT
        TEXT
      end

    end

  end

  describe Config do

  end

end