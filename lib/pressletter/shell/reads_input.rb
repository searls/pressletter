module Pressletter::Shell
  class ReadsInput
    def read
      ARGV[0] || begin
        puts "Please enter candidate Letterpress letters, then press <return>:\n"
        gets
      end
    end
  end
end