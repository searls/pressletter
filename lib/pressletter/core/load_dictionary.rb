module Pressletter::Core
  def load_dictionary(location)
    Dictionary.new(File.read(location).split("\n"))
  end
end