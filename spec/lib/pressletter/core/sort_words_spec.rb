describe "Pressletter::Core#sort_words" do
  include Pressletter::Core

  Given(:words) { Pressletter::Values::Words.new(["AL", "BAR", "CAR", "ZEBRA"]) }
  When(:result) { sort_words(words) }
  Then { result.as_array.should == ["ZEBRA", "BAR", "CAR", "AL"] }
end