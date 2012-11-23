module Letterpress
  module Shell
    # This namespace is for the minimal interoperable imperative code
  end

  module Core
    # This namespace is for the private functional code
  end

  module Values
    # This namespace is for behavioral-less values which
    # =>  serve as messages between core & shell and between shells.
  end
end

Dir[File.join(File.dirname(__FILE__), "**", "*.rb")].each {|file| require file }
