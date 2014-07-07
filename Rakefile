# -*- ruby -*-

require 'rubygems'
gem 'test-unit'
require 'hoe'
require './lib/test/unit/runner/fox'

Test::Unit.run = true

version = Test::Unit::Runner::FOX::VERSION
ENV["VERSION"] = version
Hoe.new('test-unit-runner-fox', version) do |p|
  p.developer('Kouhei Sutou', 'kou@cozmixng.org')
  p.developer('Ryan Davis', 'ryand-ruby@zenspider.com')

  p.extra_deps = ["test-unit", "fxruby"]
end

task :tag do
  message = "Released Test::Unit::Runner::FOX #{version}!"
  sh "git", "tag", version, "-m", message
  sh "git", "push", "--tags"
end

# vim: syntax=Ruby
