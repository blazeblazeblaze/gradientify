require 'optparse'

Options = Struct.new(:from, :to, :steps)

module Cli
  class Parser
    class << self
      def parse
        args = Options.new

        OptionParser.new do |opts|
          opts.on("-fCOLOR", "--from=COLOR", "gradient from") do |n|
            args.from = n
          end

          opts.on("-tCOLOR", "--to=COLOR", "gradient to") do |n|
            args.to = n
          end

          opts.on("-sSTEPS", "--steps=STEPS", "steps number") do |n|
            args.steps = n
          end
        end.parse!

        return args
      end
    end
  end
end
