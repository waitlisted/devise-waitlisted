# -*- encoding: utf-8 -*-
$:.push File.expand_path("../lib", __FILE__)
require "devise/waitlisted/version"

Gem::Specification.new do |s|
  s.name        = "devise-waitlisted"
  s.version     = Devise::Waitlisted::VERSION.dup
  s.authors     = ["Justin McNally"]
  s.email       = ["justin@waitlisted.co"]
  s.homepage    = "https://www.waitlisted.co"
  s.summary     = %q{Take waitlist signups as part of your devise flow.}
  s.description = <<-EOF
    ### To get started

    Join waitlisted at www.waitlisted.co
  EOF


  s.files         = `git ls-files`.split("\n")
  s.test_files    = `git ls-files -- {test,spec,features}/*`.split("\n")
  s.executables   = `git ls-files -- bin/*`.split("\n").map{ |f| File.basename(f) }
  s.require_paths = ["lib"]

  s.add_runtime_dependency 'rails', '>= 3.1.1'
  s.add_runtime_dependency 'devise'


  s.add_development_dependency 'bundler'
  s.add_development_dependency 'rake'
  s.add_development_dependency 'rspec-rails', '>= 3.0.1'
  s.add_development_dependency 'capybara', '2.4.1'
  s.add_development_dependency 'pry'
end
