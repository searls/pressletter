module Letterpress::Shell
  describe CLI do
    Given(:config) { ::Letterpress::Values::Config.new(
      :dictionary_location => File.expand_path("../../../fixtures/simple_dict.txt", __FILE__))
    }
    Given(:reads_input) { gimme(ReadsInput) }
    Given(:writes_output) { gimme(WritesOutput) }

    subject { CLI.new(config, reads_input, writes_output) }

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
end