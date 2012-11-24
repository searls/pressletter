module Pressletter::Core
  def solve(config, letters)
    sort_words(find_words(load_dictionary(config.dictionary_location), letters))
  end
end

