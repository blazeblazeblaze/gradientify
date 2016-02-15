require "rgb_color"

class Gradient
  attr_reader :from, :to, :steps, :results

  def initialize(from, to, steps)
    @from    = from
    @to      = to
    @steps   = steps
    @results = []
  end

  def generate
    @results = steps.times.map do |step|
      RgbColor.new(interpolate_for(step))
    end
  end

  private

  def interpolate_for(step)
    %i(red green blue).map do |color|
      from[color] + ((to[color] - from[color]) / (steps - 1)) * step
    end
  end
end
