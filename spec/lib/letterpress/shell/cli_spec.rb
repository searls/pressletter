module Letterpress::Shell
  describe CLI do
    Given(:config) { Letterpress::Values::Config.new(File.expand_path("../../../../fixtures/simple_dict.txt", __FILE__)) }
    Given(:reads_input) { gimme(ReadsInput) }
    Given(:writes_output) { gimme(WritesOutput) }

    subject { CLI.new(config, reads_input, writes_output) }

    describe "#main" do
      Given { give(reads_input).read {"eiptctbntymeiphoxvitkmzib"} }
      When { subject.main }
      Then do
        verify(writes_output).write contains "7 - EPITOME\n"+
                                             "7 - MEMITIC\n" +
                                             "4 - TENT\n" +
                                             "4 - TINT\n" +
                                             "3 - COT"
      end

    end
  end
end