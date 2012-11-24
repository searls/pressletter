module Letterpress
  def self.default_config
    Letterpress::Values::Config.new(File.expand_path("../../../assets/dictionary.txt", __FILE__))
  end
end