
lib = File.expand_path("../lib", __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require "trabue_view_tool/version"

Gem::Specification.new do |spec|
  spec.name          = "trabue_view_tool"
  spec.version       = TrabueViewTool::VERSION
  spec.authors       = ["Nikolas Trabue"]
  spec.email         = ["nktrabue@gmail.com"]

  spec.summary       = %q{Various view methods that would be useful througout my many applications.}
  spec.description   = %q{Provides generated HTML data for Rails applications.}
  spec.homepage      = "https://www.github.com/OGNeekoPolo/trabue-view-tool"
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0").reject do |f|
    f.match(%r{^(test|spec|features)/})
  end
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.16"
  spec.add_development_dependency "rake", "~> 10.0"
end
