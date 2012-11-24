describe "Letterpress::Core#sort_words" do
  include Letterpress::Core

  Given(:words) { Letterpress::Values::Words.new(["AL", "BAR", "CAR", "ZEBRA"]) }
  When(:result) { sort_words(words) }
  Then { result.as_array.should == ["ZEBRA", "BAR", "CAR", "AL"] }
end