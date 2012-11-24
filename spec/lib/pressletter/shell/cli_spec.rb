module Pressletter::Shell
  describe CLI do
    Given(:config) { Pressletter::Values::Config.new(File.expand_path("../../../../fixtures/simple_dict.txt", __FILE__)) }
    Given(:reads_input) { gimme(ReadsInput) }
    Given(:writes_output) { gimme(WritesOutput) }

    subject { CLI.new(config, reads_input, writes_output) }

    describe "#main" do
      Given { give(reads_input).read {"eiptctbntymeiphoxvitkmzib"} }
      When { subject.main }
      Then do
        verify(writes_output).write contains "EPITOME\n"+
                                             "MEMITIC\n" +
                                             "TENT\n" +
                                             "TINT\n" +
                                             "COT"
      end

    end
  end
end