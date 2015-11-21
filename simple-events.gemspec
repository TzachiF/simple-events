$:.push File.expand_path("../lib", __FILE__)

Gem::Specification.new do |s|
  s.name           = 'simple-events'
  s.version        = '0.0.1'
  s.date           = '2015-11-20'
  s.summary        = "Simple events pub-sub for in app"
  s.description    = s.summary
  s.authors        = ["Raphael Fraiman"]
  s.email          = 'raphael.fraiman@gmail.com'
  s.require_paths  = ["lib"]
  s.homepage       = 'http://rubygems.org/gems/simple-events'
  s.license        = 'MIT'

  s.add_development_dependency 'rake'
  s.add_development_dependency 'rspec'
end