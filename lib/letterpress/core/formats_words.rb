module Letterpress::Core
  def formats_words(words)
    <<-TEXT.gsub /^\s+/, ""
    7 - EPITOME
    7 - MEMITIC
    4 - TENT
    4 - TINT
    TEXT
  end
end