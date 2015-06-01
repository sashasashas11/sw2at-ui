module Swat
  module UI
    module RspecSetup
      require 'swat/ui/stats_collector'
      require 'rspec'
      require 'rspec/core/formatters'
      require 'rspec/core/formatters/base_text_formatter'

      class Formatter < RSpec::Core::Formatters::BaseTextFormatter

        RSpec::Core::Formatters.register self, :example_started, :example_passed, :example_failed, :start, :stop

        def example_passed(notification)
          StatsCollector.new(notification).collect_case if Swat::UI.config.options[:collect]
        end

        def example_failed(notification)
          StatsCollector.new(example).collect_case if Swat::UI.config.options[:collect]
        end

        def stop(notification)
          StatsCollector.new(notification).collect_thread if Swat::UI.config.options[:collect]
        end

        def start(notification); end

        def example_started(notification); end
      end

      def init_ui(options = {})
        #self.formatter = Swat::UI::RspecSetup::Formatter
      end

    end
  end
end
