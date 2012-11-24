describe "Letterpress::Core#solve" do
  include Letterpress::Core

  Given(:config) { Letterpress::Values::Config.new(File.expand_path("../../../../fixtures/simple_dict.txt", __FILE__)) }
  Given(:letters) { Letterpress::Values::Letters.new("eiptctbntymeiphoxvitkmzib".upcase.split('')) }
  When(:result) { solve(config, letters) }
  Then { result.as_array.should == ["EPITOME", "MEMITIC", "TENT", "TINT", "COT"] }
end