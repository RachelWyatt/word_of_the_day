
lib = File.expand_path("../lib", __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require "word_of_the_day/version"

Gem::Specification.new do |spec|
  spec.name          = "word_of_the_day"
  spec.version       = WordOfTheDay::VERSION
  spec.authors       = ["'Rachel Wyatt'"]
  spec.email         = ["'rw126@evansville.edu'"]

  spec.summary       = "Word Of The Day is a CLI application that scrapes from WordThink.com and displays their details."
  spec.homepage      = "https://github.com/RachelWyatt/word_of_the_day"
  spec.license       = "MIT"

  if spec.respond_to?(:metadata)
    spec.metadata["allowed_push_host"] = "http://mygemserver.com"

    spec.metadata["homepage_uri"] = spec.homepage
    spec.metadata["source_code_uri"] = "https://github.com/RachelWyatt/word_of_the_day"
    spec.metadata["changelog_uri"] = "Put your gem's CHANGELOG.md URL here."
  else
    raise "RubyGems 2.0 or newer is required to protect against " \
      "public gem pushes."
  end

  spec.files         = Dir.chdir(File.expand_path('..', __FILE__)) do
    `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  end
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.16"
  spec.add_development_dependency "rake", "~> 13.0"
end
