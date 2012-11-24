module Letterpress::Core
  def find_words(dictionary, letters)
    Letterpress::Values::Words.new(
      dictionary.as_array.map do |word|
        word if letters_can_buy?(letters, word)
      end.compact
    )
  end

private

  def letters_can_buy?(letters, word)
    letters = letters.as_hash.dup
    word.dup.split('').all? do |char|
      decrement_char!(char, letters)
    end
  end

  def decrement_char!(char, letters)
    letters[char] -= 1 if letters[char] && letters[char] > 0
  end

end