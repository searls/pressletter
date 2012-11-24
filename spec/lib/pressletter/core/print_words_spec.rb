describe "Pressletter::Core#print_words" do
  include Pressletter::Core

  Given(:words) { Pressletter::Values::Words.new(["AL", "BAR", "ZEBRA"]) }
  When(:result) { print_words(words) }
  Then do
    result.should == "AL\n" +
                     "BAR\n" +
                     "ZEBRA"

  end
end