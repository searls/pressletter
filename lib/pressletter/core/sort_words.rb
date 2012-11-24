module Pressletter::Core
  def sort_words(words)
    Pressletter::Values::Words.new(words.as_array.sort(&method(:size_then_alphabet)))
  end

private

  def size_then_alphabet(word_1, word_2)
    [-word_1.size, word_1] <=> [-word_2.size, word_2]
  end
end