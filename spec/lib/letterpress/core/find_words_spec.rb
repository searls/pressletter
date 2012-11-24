describe "Letterpress::Core#find_words" do
  include Letterpress::Core

  context "one word dictionary" do
    Given(:dictionary) { Dictionary.new(["FOOD"]) }
    context "and we've got the letters" do
      Given(:letters) { Letterpress::Values::Letters.new(["D","F","O","O"]) }
      When(:result) { find_words(dictionary, letters) }
      Then { result.as_array.should == ["FOOD"] }
    end

    context "and we don't got the letters" do
      Given(:letters) { Letterpress::Values::Letters.new(["D","F","O"]) }
      When(:result) { find_words(dictionary, letters) }
      Then { result.as_array.should == [] }
    end
  end


end