# frozen_string_literal: true

require 'optparse'

module Emotion
  module Picker
    class Cli
      # @param args[Array]
      def parse!(args)
        parser = OptionParser.new do |opts|
          opts.banner = 'Usage: emotion-picker [-hv]'

          opts.on('-h', '--help', 'Prints this help') do
            puts opts
            exit
          end

          opts.on('-v', '--version', 'Prints program version') do
            puts VERSION
            exit
          end
        end

        begin
          parser.parse!(args)
        rescue OptionParser::ParseError => e
          warn e.message
          abort parser.to_s
        end
      end
    end
  end
end
