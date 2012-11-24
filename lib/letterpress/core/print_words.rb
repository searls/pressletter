module Letterpress::Core
  def print_words(words)
    words.as_array.join("\n")
  end
end