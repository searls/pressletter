describe "Letterpress::Core#print_words" do
  include Letterpress::Core

  Given(:words) { Letterpress::Values::Words.new(["AL", "BAR", "ZEBRA"]) }
  When(:result) { print_words(words) }
  Then do
    result.should == "AL\n" +
                     "BAR\n" +
                     "ZEBRA"

  end
end