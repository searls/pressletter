describe "Letterpress::Core#print_words" do
  include Letterpress::Core

  Given(:words) { Letterpress::Values::Words.new(["AL", "BAR", "ZEBRA"]) }
  When(:result) { print_words(words) }
  Then do
    result.should == "2 - AL\n" +
                     "3 - BAR\n" +
                     "5 - ZEBRA"

  end
end