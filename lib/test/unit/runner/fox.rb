require 'test/unit'

module Test
  module Unit
    AutoRunner.register_runner(:fox) do |auto_runner|
      require 'test/unit/ui/fox/testrunner'
      Test::Unit::UI::FOX::TestRunner
    end

    module Runner
      module FOX
        VERSION = "0.0.1"
      end
    end
  end
end
