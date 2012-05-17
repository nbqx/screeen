# -*- encoding: utf-8 -*-
require File.expand_path('../lib/screeen/version', __FILE__)

Gem::Specification.new do |gem|
  gem.authors       = ["nbqx"]
  gem.email         = ["nbqxnbq@gmail.com"]
  gem.description   = ""
  gem.summary       = ""
  gem.homepage      = ""

  gem.files         = `git ls-files`.split($\)
  gem.executables   = gem.files.grep(%r{^bin/}).map{ |f| File.basename(f) }
  gem.test_files    = gem.files.grep(%r{^(test|spec|features)/})
  gem.name          = "screeen"
  gem.require_paths = ["lib"]
  gem.version       = Screeen::VERSION
end
