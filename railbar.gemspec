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

  spec.files = Dir.chdir(File.expand_path(__dir__)) do
    Dir["{app,config,lib}/**/*", "README.md"]
  end

  spec.add_dependency "rails", ">= 8.0.1"
end
