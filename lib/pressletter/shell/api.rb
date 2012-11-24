module Pressletter
  module Shell
    class API
      include Pressletter::Core

      def initialize(config=Pressletter::default_config)
        @config = config
      end

      def solve_letters(letters)
        solve(@config, create_letters(ensure_string(letters))).as_array
      end

    private

      def ensure_string(input)
        input.respond_to?(:join) ? input.join : input
      end
    end
  end

  def self.solve(letters, config=Pressletter::default_config)
    Pressletter::Shell::API.new(config).solve_letters(letters)
  end
end