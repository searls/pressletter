module Letterpress::Core
  def print_words(words)
    words.as_array.map do |word|
      "#{word.size} - #{word}"
    end.join("\n")
  end
end