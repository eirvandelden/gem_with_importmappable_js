# frozen_string_literal: true

require_relative "lib/my_gem/version"

Gem::Specification.new do |spec|
  spec.name = "my_gem"
  spec.version = MyGem::VERSION
  spec.authors = ["Etienne van Delden-de la Haije"]
  spec.email = ["etienne@vandelden.family"]

  spec.summary = "Example gem that has importmappable JS code"
  spec.description = "This gem is a minimal example on how to add JS code to your Rails application, that imports JS using import maps."
  spec.homepage = "https://github.com/eirvandelden" # TODO: make public
  spec.required_ruby_version = ">= 2.6.0"

  # spec.metadata["allowed_push_host"] = "TODO: Set to your gem server 'https://example.com'"

  spec.metadata["homepage_uri"] = spec.homepage
  spec.metadata["source_code_uri"] = spec.homepage
  # spec.metadata["changelog_uri"] = "TODO: Put your gem's CHANGELOG.md URL here."

  # Specify which files should be added to the gem when it is released.
  # The `git ls-files -z` loads the files in the RubyGem that have been added into git.
  spec.files = Dir["{app,config,lib}/**/*", "MIT-LICENSE", "Rakefile", "README.md"]

  # Uncomment to register a new dependency of your gem
  spec.add_dependency "importmap-rails"
  # spec.add_dependency "railties", ">= 7.1"

  # For more information and examples about making a new gem, check out our
  # guide at: https://bundler.io/guides/creating_gem.html
end
