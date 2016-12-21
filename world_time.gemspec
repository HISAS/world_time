# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'world_time/version'

Gem::Specification.new do |spec|
  spec.name          = "world_time"
  spec.version       = WorldTime::VERSION
  spec.authors       = ["Hisashi Kamezawa"]
  spec.email         = ["hkame6926@gmail.com"]

  spec.summary       = "This gem returns world time"
  spec.description   = "You can easily return local time in the world"
  spec.homepage      = "https://github.com/HISAS/world_time"
  spec.license       = "MIT"

  # Prevent pushing this gem to RubyGems.org. To allow pushes either set the 'allowed_push_host'
  # to allow pushing to a single host or delete this section to allow pushing to any host.
  if spec.respond_to?(:metadata)
    spec.metadata['allowed_push_host'] = "TODO: Set to 'http://mygemserver.com'"
  else
    raise "RubyGems 2.0 or newer is required to protect against " \
      "public gem pushes."
  end

  spec.files         = `git ls-files -z`.split("\x0").reject do |f|
    f.match(%r{^(test|spec|features)/})
  end
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

end
