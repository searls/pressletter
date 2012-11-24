module Pressletter
  def self.default_config
    Pressletter::Values::Config.new(File.expand_path("../../../assets/dictionary.txt", __FILE__))
  end
end