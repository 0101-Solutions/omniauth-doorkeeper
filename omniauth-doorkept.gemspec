# frozen_string_literal: true

require_relative "lib/omniauth/doorkept/version"

Gem::Specification.new do |spec|
  spec.name          = "omniauth-doorkept"
  spec.version       = Omniauth::Doorkept::VERSION
  spec.authors       = ["Toxic254"]
  spec.email         = ["cyrus_g@outlook.com"]

  spec.summary       = "This is an application that can be used to OAuth Users in to our site."
  spec.description   = "Our Application is an API and it enables our users to communicate with the people on our mobile app endpoint."
  spec.homepage      = "https://github.com/Toxic254"
  spec.required_ruby_version = Gem::Requirement.new(">= 2.4.0")

  spec.metadata["allowed_push_host"] = "http://mygemserver.com"

  spec.metadata["homepage_uri"] = spec.homepage
  spec.metadata["source_code_uri"] = "https://github.com/0101-Solutions/omniauth-doorkeeper.git"
  spec.metadata["changelog_uri"] = "https://github.com/0101-Solutions/omniauth-doorkeeper/blob/master/CHANGELOG.md"

  # Specify which files should be added to the gem when it is released.
  # The `git ls-files -z` loads the files in the RubyGem that have been added into git.
  spec.files = Dir.chdir(File.expand_path(__dir__)) do
    `git ls-files -z`.split("\x0").reject { |f| f.match(%r{\A(?:test|spec|features)/}) }
  end
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{\Aexe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

 
  # Added Ommiauth Dependency Gem. Incase our gem hasn't and OAuth2 changed.
  spec.add_dependency 'omniauth-oauth2', '~> 1.7', '>= 1.7.1'

  # Uncomment to register a new dependency of your gem
  # spec.add_dependency "example-gem", "~> 1.0"

  # For more information and examples about making a new gem, checkout our
  # guide at: https://bundler.io/guides/creating_gem.html
end
