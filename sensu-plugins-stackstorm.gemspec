# coding: utf-8

Gem::Specification.new do |spec|
  spec.name          = "sensu-plugins-stackstorm"
  spec.version       = '0.0.1'
  spec.authors       = ["Hiroyasu OHYAMA"]
  spec.email         = ["user.localhost2000@gmail.com"]

  spec.summary       = %q{Sensu plugins for StackStorm}
  spec.description   = %q{}
  spec.homepage      = "https://github.com/userlocalhost2000/sensu-plugins-stackstorm"

  spec.files         = `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  spec.bindir        = "bin"
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.license       = "Apache-2.0"
end
