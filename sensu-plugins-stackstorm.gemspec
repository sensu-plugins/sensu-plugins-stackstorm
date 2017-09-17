# coding: utf-8

lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)

require 'sensu-plugins-stackstorm/version'

Gem::Specification.new do |spec| # rubocop:disable Metrics/BlockLength
  spec.name          = 'sensu-plugins-stackstorm'
  spec.version       = SensuPluginsStackStorm::Version::VER_STRING
  spec.authors       = [
    'StackStorm, Inc.',
    'Hiroyasu OHYAMA',
    'Sensu-Plugins and contributors'
  ]
  spec.email = [
    'info@stackstorm.com',
    'user.localhost2000@gmail.com',
    '<sensu-users@googlegroups.com>'
  ]

  spec.summary       = 'Sensu plugins for StackStorm'
  spec.description   = 'Sensu stackstorm plugins'
  spec.homepage      = 'https://github.com/sensu-plugins/sensu-plugins-stackstorm'

  spec.files         = Dir.glob('{bin,lib}/**/*') + %w[LICENSE README.md CHANGELOG.md]
  spec.bindir        = 'bin'
  spec.executables   = Dir.glob('bin/**/*.rb').map { |file| File.basename(file) }
  spec.files         = Dir.glob('{bin,lib}/**/*')
  spec.license       = 'Apache-2.0'

  spec.add_development_dependency 'github-markup', '~> 1.3'
  spec.add_development_dependency 'rake', '~> 12.0'
  spec.add_development_dependency 'redcarpet', '~> 3.2'
  spec.add_development_dependency 'rspec', '~> 3.6'
  spec.add_development_dependency 'rubocop', '~> 0.49.0'
  spec.add_development_dependency 'yard', '~> 0.8'
end
