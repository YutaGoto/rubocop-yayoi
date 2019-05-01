
lib = File.expand_path("../lib", __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require "rubocop/yayoi/version"

Gem::Specification.new do |spec|
  spec.name          = "rubocop-yayoi"
  spec.version       = Rubocop::Yayoi::VERSION
  spec.authors       = ["YutaGoto"]
  spec.email         = ["you.goto.510@gmail.com"]

  spec.summary       = 'Rubocop with Yayoi Takatsuki'
  spec.description   = 'Rubocop with Yayoi Takatsuki'
  spec.homepage      = "https://github.com/YutaGoto/rubocop-yayoi"
  spec.license       = "MIT"

  # Specify which files should be added to the gem when it is released.
  # The `git ls-files -z` loads the files in the RubyGem that have been added into git.
  spec.files         = Dir.chdir(File.expand_path('..', __FILE__)) do
    `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  end
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_runtime_dependency 'rubocop', '>= 0.67.2'
  spec.add_development_dependency "rspec", "~> 3.0"
end
