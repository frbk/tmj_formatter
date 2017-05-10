# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'tmj_formatter/version'

Gem::Specification.new do |spec|
  spec.name          = 'tmj_formatter'
  spec.version       = TmjFormatter::VERSION
  spec.authors       = ['frbk']
  spec.email         = ['']

  spec.summary       = %q{Write a short summary, because Rubygems requires one.}
  spec.description   = %q{Write a longer description or delete this line.}
  spec.homepage      = 'https://github.com/frbk/tmj_formatter'
  spec.license       = 'MIT'

  spec.files         = `git ls-files -z`.split("\x0").reject do |f|
    f.match(%r{^(test|spec|features)/})
  end
  spec.bindir        = 'exe'
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ['lib']

  spec.add_runtime_dependency     'tmj_ruby', '~> 0.1.0'
  spec.add_runtime_dependency     'rspec', '~> 3.0'
  spec.add_development_dependency 'bundler', '~> 1.14'
  spec.add_development_dependency 'rake', '~> 12.0'
  spec.add_development_dependency 'coveralls', '~> 0.8.20'
  spec.add_development_dependency 'pry',       '~> 0.10.4'
end
