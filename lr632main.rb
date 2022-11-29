# frozen_string_literal: true

require_relative 'lr632.rb'

puts 'Enter value of x'
x_val = gets.chomp
foo_cos = ->(x) { (0..10).inject { |sum| sum + Math.tan(x + 1) / (x + 1) } * 0.1 }
foo_sin = ->(x) { ((0..10).inject { |sum| sum + (Math.sin(x) / x) } * 0.09) }

if !x_val.match(/\d/).nil?
  puts 'integral tan(x):'

  flag1 = DD.intg(foo_cos, x_val)
  if flag1.nan?
    puts 'integral is not defined'
  else
    puts('Integral = ' + flag1.to_s)
  end

  puts 'integral sin(x):'

  flag2 = DD.intg(foo_sin, x_val)
  if flag2.nan?
    puts 'integral is not defined'

  else
    puts('Integral = ' + flag2.to_s)
  end

else
  puts('Enter a number!!!')
end
