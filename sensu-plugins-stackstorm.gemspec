# coding: utf-8

lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)

require "sensu-plugins-stackstorm/version"

Gem::Specification.new do |spec|
  spec.name          = "sensu-plugins-stackstorm"
  spec.version       = SensuPluginsStackStorm::VERSION
  spec.authors       = ["StackStorm, Inc.", "Hiroyasu OHYAMA"]
  spec.email         = ["info@stackstorm.com", "user.localhost2000@gmail.com"]

  spec.summary       = %q{Sensu plugins for StackStorm}
  spec.description   = %q{}
  spec.homepage      = "https://github.com/userlocalhost2000/sensu-plugins-stackstorm"

  spec.files         = `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  spec.bindir        = "bin"
  spec.executables   = Dir.glob('bin/**/*.rb').map { |file| File.basename(file) }
  spec.files         = Dir.glob('{bin,lib}/**/*')
  spec.license       = "Apache-2.0"

  spec.add_development_dependency 'rspec', '~> 3.6'
  spec.add_development_dependency 'rake', '~> 12.0'
end
