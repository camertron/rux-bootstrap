$:.unshift File.join(File.dirname(__FILE__), 'lib')
require 'rux/bootstrap/version'

Gem::Specification.new do |s|
  s.name     = 'rux-bootstrap'
  s.version  = ::Bootstrap::VERSION
  s.authors  = ['Cameron Dutro']
  s.email    = ['camertron@gmail.com']
  s.homepage = 'http://github.com/camertron/rux-bootstrap'
  s.description = s.summary = 'A collection of Rux view components for building webpages with Bootstrap.'
  s.platform = Gem::Platform::RUBY

  s.add_dependency 'rux', '~> 1.0'

  s.require_path = 'lib'

  s.files = Dir['{lib,spec}/**/*', 'Gemfile', 'LICENSE', 'CHANGELOG.md', 'README.md', 'Rakefile', 'rux-bootstrap.gemspec']
end
