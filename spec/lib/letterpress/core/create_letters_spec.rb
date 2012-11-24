describe "Letterpress::Core#create_letters" do
  include Letterpress::Core

  context "several letters" do
    When(:result) { create_letters("c a ba") }
    Then { result.as_array.should == ["A", "A", "B", "C"] }
    Then { result.as_hash.should == { "A" => 2, "B" => 1, "C" => 1 }}
  end

  context "containing a non-alpha character" do
    Then { lambda { create_letters("1") }.should raise_error "Letters only!" }
  end

end