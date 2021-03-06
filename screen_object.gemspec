# frozen_string_literal: true

lib = File.expand_path('lib', __dir__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'screen_object/version'

Gem::Specification.new do |spec|
  spec.name          = 'screen_object'
  spec.version       = ScreenObject::VERSION
  spec.authors       = ['Donavan Stanley']
  spec.email         = ['donavan.stanley@gmail.com']

  spec.summary       = 'Page object pattern for Appium'
  spec.description   = 'Modeled after the PageObject gem, this provides an easier way to work with Appium'
  spec.homepage      = 'https://github.com/Donavan/screen_object'

  spec.files         = `git ls-files -z`.split("\x0").reject do |f|
    f.match(%r{^(test|spec|features)/})
  end
  spec.bindir        = 'exe'
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ['lib']

  spec.add_development_dependency 'bundler', '~> 1.16'
  spec.add_development_dependency 'overcommit', '~> 0.45'
  spec.add_development_dependency 'pry', '~> 0.11'
  spec.add_development_dependency 'pry-byebug', '~> 3.6'
  spec.add_development_dependency 'pry-stack_explorer', '~> 0.4.9'
  spec.add_development_dependency 'rake', '~> 10.0'
  spec.add_development_dependency 'rspec', '~> 3.0'
  spec.add_development_dependency 'rubocop', '~> 0.57'

  spec.add_dependency 'appium_lib', '~> 9.14'
end
