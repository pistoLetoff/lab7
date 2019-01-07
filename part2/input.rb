require_relative '2'

print "Введите 2 числа"
n = gets
m = gets
a = My_number_two.new(n, m)

puts a.get_real
puts a.get_value
puts a.num_len

print "Введите 2 числа"
n = gets
m = gets

a.change_real m
a.change_value n

puts a.get_real
puts a.get_value
puts a.num_len