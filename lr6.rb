# frozen_string_literal: true

# This
class DD
  @eps = 10.0**-5
  @s = 0
  @k = 1
  @sumryad = 0
  @fakt = 1
  def self.schet
    while Math::E - @s > @eps
      @s = 0
      @fakt = 1
      (1..@k).map { |i| @fakt *= (1 / i.to_f) }
      @sumryad += @fakt
      puts(@sumryad)
      @s = 1 + @sumryad
      @k += 1
    end
    @s
  end

  def self.retk
    @k
  end
end
