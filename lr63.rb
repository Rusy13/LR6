# frozen_string_literal: true

# This
class DD
  def self.intg(x_value)
    yield x_value.to_f
  end
end
