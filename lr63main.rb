# frozen_string_literal: true

require_relative 'lr63.rb'
puts 'Enter value of x'
x_val = gets.chomp

if !x_val.match(/\d/).nil?
  puts 'integral tan(x):'
  flag1 = DD.intg(x_val) { |x| (0..10).inject { |sum| sum + Math.tan(x + 1) / (x + 1) } * 0.1 }

  if flag1.nan?
    puts 'integral is not defined'
  else
    puts('Integral = ' + flag1.to_s)
  end

  puts("\n\n")

  puts 'integral sin(x):'
  flag2 = DD.intg(x_val) { |x| ((0..10).inject { |sum| sum + (Math.sin(x) / x) } * 0.09) }

  if flag2.nan?
    puts 'integral is not defined'

  else
    puts('Integral = ' + flag2.to_s)
  end
else
  puts('Enter a number!!!')
end
