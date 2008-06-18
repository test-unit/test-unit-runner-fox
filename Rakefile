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

  p.rubyforge_name = "test-unit"
end

task :tag do
  message = "Released Test::Unit::Runner::FOX #{version}!"
  base = "svn+ssh://#{ENV['USER']}@rubyforge.org/var/svn/test-unit/extensions/test-unit-runner-fox/"
  sh 'svn', 'copy', '-m', message, "#{base}trunk", "#{base}tags/#{version}"
end

# vim: syntax=Ruby
