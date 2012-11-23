# -*- encoding: utf-8 -*-
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'letterpress/version'

Gem::Specification.new do |gem|
  gem.name          = "letterpress"
  gem.version       = Letterpress::VERSION
  gem.authors       = ["Justin Searls"]
  gem.email         = ["searls@gmail.com"]
  gem.description   = %q{TODO: Write a gem description}
  gem.summary       = %q{TODO: Write a gem summary}
  gem.homepage      = ""

  gem.files         = `git ls-files`.split($/)
  gem.executables   = gem.files.grep(%r{^bin/}).map{ |f| File.basename(f) }
  gem.test_files    = gem.files.grep(%r{^(test|spec|features)/})
  gem.require_paths = ["lib"]

  gem.add_development_dependency "rspec", "~> 2.12.0"
  gem.add_development_dependency "rspec-given", "~> 2.2.0"
  gem.add_development_dependency "gimme", "~> 0.3.4"
end
