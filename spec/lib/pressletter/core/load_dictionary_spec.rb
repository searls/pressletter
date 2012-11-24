describe "Pressletter::Core#load_dictionary" do
  include Pressletter::Core

  Given(:content) do
    <<-TXT.gsub /^\s+/, ""
    A
    ABC
    DOG
    PANDA
    TXT
  end
  Given(:path) { tempfile_location_containing(content) }
  When(:result) { load_dictionary(path) }
  Then { result.as_array.should == ["A", "ABC", "DOG", "PANDA"]}

  def tempfile_location_containing(content)
    require 'tempfile'
    f = Tempfile.new("not-unique")
    f.write(content)
    f.close
    f.path
  end
end