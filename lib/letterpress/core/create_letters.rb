module Letterpress::Core
  def create_letters(input)
    Letterpress::Values::Letters.new(
      ensure_alphabetical(
        input.chomp.split('').
          map { |c| c.upcase }.
            reject { |c| c == ' ' }.compact.sort
      )
    )
  end

private

  def ensure_alphabetical(letters)
    raise "Letters only!" if letters.any? {|l| l =~ /[^A-Z]/}
    letters
  end

end
