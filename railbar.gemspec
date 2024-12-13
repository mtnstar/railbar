# frozen_string_literal: true

require_relative "lib/railbar/version"

Gem::Specification.new do |spec|
  spec.name = "railbar"
  spec.version = Railbar::VERSION
  spec.authors = ["Mountain Star"]
  spec.email = ["github@mtnstar.net"]

  spec.summary = "A status bar for Rails development."
  spec.description = "A status bar for development and testing rails environments to distinguish between development, staging, and production environments and show status of turbo/hotwire"
  spec.homepage = "https://github.com/mtnstar/railbar"
  spec.required_ruby_version = ">= 3.0.0"

  spec.metadata["homepage_uri"] = spec.homepage
  spec.metadata["source_code_uri"] = "https://github.com/mtnstar/railbar"
  spec.metadata["changelog_uri"] = "https://github.com/mtnstar/railbar/blob/main/CHANGELOG.md"

  # Specify which files should be added to the gem when it is released.
  # The `git ls-files -z` loads the files in the RubyGem that have been added into git.
  gemspec = File.basename(__FILE__)
  spec.files = IO.popen(%w[git ls-files -z], chdir: __dir__, err: IO::NULL) do |ls|
    ls.readlines("\x0", chomp: true).reject do |f|
      (f == gemspec) ||
        f.start_with?(*%w[bin/ test/ spec/ features/ .git .github appveyor Gemfile])
    end
  end
  spec.bindir = "exe"
  spec.executables = spec.files.grep(%r{\Aexe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_dependency "rails", ">= 7.0"

  # For more information and examples about making a new gem, check out our
  # guide at: https://bundler.io/guides/creating_gem.html
end
