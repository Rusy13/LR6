# frozen_string_literal: true

# This
class DD
  def self.schet(eps)
    res_sum = sum = 0
    counter = 1
    result = (1..100).to_a.collect { |k| sum += 1.0 / ((1..k).inject(:*) || 1) }
    result.each do |curr_sum|
      res_sum = curr_sum
      puts(res_sum)
      counter += 1
      break if (1 + curr_sum - Math::E).abs < eps
    end
    [res_sum + 1, counter]
  end
end
