# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'capistrano/rake/version'

Gem::Specification.new do |spec|
  spec.name          = 'capistrano-rake'
  spec.authors       = ['Sheharyar Naseer']
  spec.email         = ['hello@sheharyar.me']
  spec.version       = Capistrano::Rake::VERSION

  spec.summary       = 'Run any rake task on a remote server using Capistrano'
  spec.homepage      = 'https://github.com/sheharyarn/capistrano-rake'
  spec.license       = 'MIT'

  spec.files         = `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  spec.bindir        = 'exe'
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ['lib']


  spec.add_dependency 'capistrano', '>= 3.0'

  spec.add_development_dependency 'bundler',    '~> 1.11'
  spec.add_development_dependency 'rake',       '~> 10.0'
  spec.add_development_dependency 'rspec',      '~> 3.0'
end

