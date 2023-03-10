# frozen_string_literal: true

require_relative "lib/statistician/version"

Gem::Specification.new do |spec|
  spec.name          = "bridgetown-resource-statistics"
  spec.version       = Statistician::VERSION
  spec.author        = "Neil van Beinum"
  spec.email         = ""
  spec.summary       = "Bridgetown plugin for generating resource content statistics"
  spec.homepage      = "https://github.com/bridgetownrb/bridgetown-sample-plugin"
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0").reject { |f| f.match(%r!^(test|script|spec|features|frontend)/!) }
  spec.test_files    = spec.files.grep(%r!^test/!)
  spec.require_paths = ["lib"]
  spec.metadata      = { "yarn-add" => "bridgetown-sample-plugin@#{Statistician::VERSION}" }

  spec.required_ruby_version = ">= 2.7.0"

  spec.add_dependency "bridgetown", ">= 1.0", "< 2.0"

  spec.add_development_dependency "bundler"
  spec.add_development_dependency "rake", ">= 13.0"
  spec.add_development_dependency "rubocop-bridgetown", "~> 0.3"
end
