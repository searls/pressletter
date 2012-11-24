describe "Pressletter::Core#solve" do
  include Pressletter::Core

  Given(:config) { Pressletter::Values::Config.new(File.expand_path("../../../../fixtures/simple_dict.txt", __FILE__)) }
  Given(:letters) { Pressletter::Values::Letters.new("eiptctbntymeiphoxvitkmzib".upcase.split('')) }
  When(:result) { solve(config, letters) }
  Then { result.as_array.should == ["EPITOME", "MEMITIC", "TENT", "TINT", "COT"] }
end