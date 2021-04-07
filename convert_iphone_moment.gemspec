# frozen_string_literal: true

require_relative "lib/convert_iphone_moment/version"

Gem::Specification.new do |spec|
  spec.name          = "convert_iphone_moment"
  spec.version       = ConvertIphoneMoment::VERSION
  spec.authors       = ["Tamara Temple"]
  spec.email         = ["tamouse@gmail.com"]

  spec.summary       = "Convert (i)Photos) Moment folder names into a useful sorting name"
  spec.description   = "When exporting images from Photos.app including the moment name, " \
                       "it creates a folder with a name like \"Moment Name, Month 00, 2021\" " \
                       "which is pretty unuseful. " \
                       "This utility changes the folder name to \"YYYY-mm-dd.Moment-Name\" " \
                       "so it sorts well and can become a URL easily."
  spec.homepage      = "https://github.com/tamouse"
  spec.license       = "MIT"
  spec.required_ruby_version = Gem::Requirement.new(">= 2.7.1")

  # spec.metadata["allowed_push_host"] = "TODO: Set to 'http://mygemserver.com'"

  # spec.metadata["homepage_uri"] = spec.homepage
  # spec.metadata["source_code_uri"] = "TODO: Put your gem's public repo URL here."
  # spec.metadata["changelog_uri"] = "TODO: Put your gem's CHANGELOG.md URL here."

  # Specify which files should be added to the gem when it is released.
  # The `git ls-files -z` loads the files in the RubyGem that have been added into git.
  spec.files = Dir.chdir(File.expand_path(__dir__)) do
    `git ls-files -z`.split("\x0").reject { |f| f.match(%r{\A(?:test|spec|features)/}) }
  end
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{\Aexe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  # Uncomment to register a new dependency of your gem
  # spec.add_dependency "example-gem", "~> 1.0"

  # For more information and examples about making a new gem, checkout our
  # guide at: https://bundler.io/guides/creating_gem.html
end
