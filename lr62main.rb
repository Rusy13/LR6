# frozen_string_literal: true

require './lr62.rb'
puts 'exp: 1: 10^-4 or 2: 10^-5'
choice = gets.chomp.to_i
case choice
when 1
  eps = 0.0001
when 2
  eps = 0.00001
end

puts "Sum and count of integration: #{DD.schet(eps)}"
