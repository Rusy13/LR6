# frozen_string_literal: true

# This
class DD
  def self.intg(lambda, x_value)
    lambda.call(x_value.to_f)
  end
end
