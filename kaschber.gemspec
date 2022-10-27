# frozen_string_literal: true

Gem::Specification.new do |spec|
  spec.name          = "kaschber"
  spec.version       = "0.1.0"
  spec.authors       = [""]
  spec.email         = [""]

  spec.summary       = "A Jekyll theme ported from Ghost's default theme Casper."
  spec.homepage      = "https://github.com/Agraphie/kaschber"
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0").select { |f| f.match(%r!^(assets|_layouts|_includes|_sass|LICENSE|README|_config\.yml)!i) }

  spec.add_runtime_dependency "jekyll", "~> 4.3"
end
