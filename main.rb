require_relative 'list'
require_relative 'enumerable'

list = MyList.new([1, 2, 3, 4, 5])

puts "All? (greater than 0): #{list.all? { |item| item > 0 }}"  # Output: true
puts "Any? (greater than 5): #{list.any? { |item| item > 5 }}"  # Output: false
filtered_list = list.filter { |item| item.even? }
puts "Filtered List (even numbers): #{filtered_list}"