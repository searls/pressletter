module Letterpress::Core
  def format_words(words, limit = 100)
    words.as_array.sort_by(&:size).reverse.take(100).map do |word|
      "#{word.size} - #{word}"
    end.join("\n")
  end
end