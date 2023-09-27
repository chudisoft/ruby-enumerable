require_relative 'enumerable'
require_relative 'list'

list = MyList.new(1, 2, 3, 4, 5)

puts "All? (greater than 0): #{list.all?(&:positive?)}" # Output: true
puts "Any? (greater than 5): #{list.any? { |item| item > 5 }}" # Output: false
filtered_list = list.filter(&:even?)
puts "Filtered List (even numbers): #{filtered_list}"


list = MyList.new(1, 2, 3, 4)
puts(list.all? { |e| e < 5 })
puts(list.all? { |e| e > 5 })
puts(list.any? { |e| e == 2 })
puts(list.any? { |e| e == 5 })
puts(list.filter(&:even?))
