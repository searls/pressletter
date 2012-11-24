describe "Letterpress::Core#format_words" do
  include Letterpress::Core

  Given(:words) { Letterpress::Values::Words.new(["AL", "BAR", "ZEBRA"]) }
  When(:result) { format_words(words) }
  Then do
    result.should == "5 - ZEBRA\n" +
                     "3 - BAR\n" +
                     "2 - AL"
  end
end