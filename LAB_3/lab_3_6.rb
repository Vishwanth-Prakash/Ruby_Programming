def get_numbers_from_user
  puts "Enter numbers separated by spaces:"
  gets.chomp.split.map(&:to_i)
end

numbers = get_numbers_from_user
puts "You entered: #{numbers}"

puts "\nArray basics:"
puts "First element: #{numbers[0]}"
puts "Last element: #{numbers[-1]}"
puts "Slice (2..4): #{numbers[2..4]}"
puts "First two elements: #{numbers.first(2)}"
puts "Last element removed: #{numbers.pop}"

puts "\nArray methods:"
puts "Length: #{numbers.length}"
puts "Reversed: #{numbers.reverse}"
puts "Sorted: #{numbers.sort}"
puts "Adding 5: #{numbers.push(5)}"

puts "\nAdding and removing elements:"
numbers.push(6)
numbers.insert(1, 7)
puts "After additions: #{numbers}"

numbers.delete(5)
puts "After deletion: #{numbers}"

new_array = [10, 20, 30]
puts "\nArray operations with new array:"
puts "Concatenated: #{numbers + new_array}"
puts "Difference: #{numbers - new_array}"

def linear_search(array, target)
  array.index(target) || "Not found"
end

target = 6
index = linear_search(numbers, target)
puts "\nLinear search for #{target}:"
puts "Element #{target} found at index #{index}." if index.is_a?(Integer)
