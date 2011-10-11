# -*- encoding: utf-8 -*-
$:.push File.expand_path("../lib", __FILE__)
require "cleanup_sessions/version"

Gem::Specification.new do |s|
  s.name        = "cleanup_sessions"
  s.version     = CleanupSessions::VERSION
  s.authors     = ["Krzysztof Sakwerda"]
  s.email       = ["ksakwerda@gmail.com"]
  s.homepage    = ""
  s.summary     = "Session cleaner for rails applications"
  s.description = "It adds cleanup:sessions task to your rake tasks which deletes sessions older than a month"

  s.rubyforge_project = "cleanup_sessions"

  s.files         = `git ls-files`.split("\n")
  s.test_files    = `git ls-files -- {test,spec,features}/*`.split("\n")
  s.executables   = `git ls-files -- bin/*`.split("\n").map{ |f| File.basename(f) }
  s.require_paths = ["lib"]

  s.add_dependency "rake"
  s.add_dependency "rails", ">= 3.0"
end
