# frozen_string_literal: true

require_relative "lib/memo_wise/version"

Gem::Specification.new do |spec|
  spec.name          = "memo_wise"
  spec.version       = MemoWise::VERSION
  spec.authors       = ["Panorama Education"]
  spec.email         = ["engineering@panoramaed.com"]

  spec.summary       = "The wisest choice for Ruby memoization."
  spec.homepage      = "https://github.com/panorama-ed/memo_wise"
  spec.license       = "MIT"
  spec.required_ruby_version = Gem::Requirement.new(">= 2.4.0")

  # Specify which files should be added to the gem when it is released.
  # The `git ls-files -z` loads the files in the RubyGem that have been added
  # into git.
  spec.files = Dir.chdir(File.expand_path(__dir__)) do
    `git ls-files -z`.split("\x0").reject do |f|
      f.match(%r{^(test|spec|features)/})
    end
  end
  spec.require_paths = ["lib"]
end
