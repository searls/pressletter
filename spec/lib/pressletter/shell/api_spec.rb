module Pressletter::Shell
  describe "ruby API" do
    shared_examples_for "API methods" do
      Given(:letters) { "eiptctbntymeiphoxvitkmzib".split('') }
      Then { result.should == ["EPITOME", "MEMITIC", "TENT", "TINT", "COT"] }
    end

    Given(:config) { Pressletter::Values::Config.new(File.expand_path("../../../../fixtures/simple_dict.txt", __FILE__)) }

    describe API do
      subject { API.new(config) }

      describe "#solve" do
        it_behaves_like "API methods" do
          When(:result) { subject.solve_letters(letters) }
        end
      end
    end

    describe "top-level DSL" do
      it_behaves_like "API methods" do
        When(:result) { Pressletter.solve(letters, config) }
      end
    end
  end
end