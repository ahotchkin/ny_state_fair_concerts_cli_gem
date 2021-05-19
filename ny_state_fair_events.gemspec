
lib = File.expand_path("../lib", __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require "ny_state_fair_events/version"

Gem::Specification.new do |spec|
  spec.name          = "ny_state_fair_events"
  spec.version       = NYStateFairEvents::VERSION
  spec.authors       = ["'Allyson Hotchkin'"]
  spec.email         = ["'ahotchk1@yahoo.com'"]

  spec.summary       = "NY State Fair Chevy Court Events"
  spec.description   = "Provides a listing of all Chevy Court events at the 2018 NY State Fair, and details for each event"
  spec.homepage      = "https://github.com/ahotchkin/ny_state_fair_events_cli_gem"
  spec.license       = "MIT"

  # Prevent pushing this gem to RubyGems.org. To allow pushes either set the 'allowed_push_host'
  # to allow pushing to a single host or delete this section to allow pushing to any host.
  if spec.respond_to?(:metadata)
    spec.metadata["allowed_push_host"] = "TODO: Set to 'http://mygemserver.com'"
  else
    raise "RubyGems 2.0 or newer is required to protect against " \
      "public gem pushes."
  end

  # Specify which files should be added to the gem when it is released.
  # The `git ls-files -z` loads the files in the RubyGem that have been added into git.
  spec.files         = Dir.chdir(File.expand_path('..', __FILE__)) do
    `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  end
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.16"
  spec.add_development_dependency "rake", ">= 12.3.3"
  spec.add_development_dependency "rspec"
  spec.add_development_dependency "nokogiri", "~> 1.11.4"
  spec.add_development_dependency "pry"
end
