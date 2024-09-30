def get_array_from_user
    puts "Enter array elements separated by spaces:"
    input = gets.chomp.split.map(&:to_i) 
  end
  
  array = get_array_from_user
  puts "You entered the array: #{array}"
  
  puts "\nAccessing array elements:"
  puts "First element: #{array[0]}"
  puts "Last element: #{array[-1]}"
  puts "Elements from index 1 to 3: #{array[1..3]}"
  puts "Element at index 2: #{array[2]}"
  puts "First three elements: #{array.first(3)}"
  puts "Last two elements: #{array.last(2)}"
  
  puts "\nArray methods:"
  puts "Array length: #{array.length}"
  puts "Array reversed: #{array.reverse}"
  puts "Array sorted: #{array.sort}"
  puts "Array without element 4: #{array - [4]}"
  puts "Array with element 7 added: #{array.push(7)}"
  
  puts "\nAdding and deleting elements:"
  array.push(8) 
  array.insert(2, 9)
  puts "Array after additions: #{array}"
  
  array.pop     
  array.delete_at(3) 
  array.delete(9) 
  puts "Array after deletions: #{array}"
  
 
  b = [4, 5, 6, 7, 8]
  c = [6, 7, 8, 9, 10]
  
  puts "\nArray operations with new arrays:"
  puts "Intersection of array and b: #{array & b}"
  puts "Concatenation of array and c: #{array + c}"
  puts "Difference between b and c: #{b - c}"
  
  def binary_search(array, target)
    low, high = 0, array.length - 1
    while low <= high
      mid = (low + high) / 2
      case array[mid] <=> target
      when 0 then return mid
      when 1 then high = mid - 1
      when -1 then low = mid + 1
      end
    end
    -1
  end
  
  sorted_array = array.sort
  target = 5
  index = binary_search(sorted_array, target)
  puts "\nBinary search for #{target}:"
  puts index != -1 ? "Element #{target} found at index #{index} in sorted array." : "Element #{target} not found."
  