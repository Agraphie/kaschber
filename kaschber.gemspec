# frozen_string_literal: true

Gem::Specification.new do |spec|
  spec.name          = "kaschber"
  spec.version       = "0.2.1"
  spec.authors       = [""]
  spec.email         = [""]

  spec.summary       = "A Jekyll theme ported from Ghost's default theme Casper."
  spec.homepage      = "https://github.com/Agraphie/kaschber"
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0").select { |f| f.match(%r!^(_layouts|_includes|_sass|LICENSE|README|_config\.yml)!i) }
  spec.files         += Dir['assets/**/built/**']

  spec.add_runtime_dependency "jekyll", "~> 4.2"
  spec.add_runtime_dependency "jekyll-feed", "~> 0.9"
  spec.add_runtime_dependency "jekyll-seo-tag", "~> 2.1"
  spec.add_runtime_dependency "slugify", "~> 1.0" 
  spec.add_runtime_dependency "jekyll-tagging-lite", "~> 1.2.0" 
end