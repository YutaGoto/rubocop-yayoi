# frozen_string_literal: true

lib = File.expand_path('lib', __dir__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'rubocop/yayoi/version'

Gem::Specification.new do |spec|
  spec.name          = 'rubocop-yayoi'
  spec.version       = Rubocop::Yayoi::VERSION
  spec.authors       = ['YutaGoto']
  spec.email         = ['you.goto.510@gmail.com']

  spec.summary       = "ζ*'ヮ')ζ＜うっうー！Rubocop with Yayoi Takatsuki"
  spec.description   = "ζ*'ヮ')ζ＜うっうー！Rubocop with Yayoi Takatsuki"
  spec.homepage      = 'https://github.com/YutaGoto/rubocop-yayoi'
  spec.license       = 'MIT'

  spec.files         = `git ls-files -z`.split("\x0")
  spec.bindir        = 'exe'
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ['lib']

  spec.add_runtime_dependency 'rubocop', '>= 0.76.0'
  spec.add_development_dependency 'rake', '~> 10.0'
  spec.add_development_dependency 'rspec', '~> 3.0'
end
