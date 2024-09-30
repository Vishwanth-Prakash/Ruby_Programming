class NumAnalyzer
  def find_heads(nums, n)
    puts "Head numbers: "
    (1...n - 1).each do |i|
      if nums[i] > nums[i - 1] && nums[i] > nums[i + 1]
        puts nums[i]
      end
    end
  end

  def find_max_pair(nums, n)
    max_pair = [nums[0], nums[1]]
    max_sum = nums[0] + nums[1]
    (0...n - 1).each do |i|
      (i + 1...n).each do |j|
        cur_sum = nums[i] + nums[j]
        if cur_sum > max_sum
          max_sum = cur_sum
          max_pair = [nums[i], nums[j]]
        end
      end
    end
    max_pair
  end
end

puts "Enter number of elements: "
n = gets.chomp.to_i

nums = []

puts "Enter elements: "
n.times do
  nums << gets.chomp.to_i
end

analyzer = NumAnalyzer.new

analyzer.find_heads(nums, n)

max_pair = analyzer.find_max_pair(nums, n)

puts "Max Pair: #{max_pair}"
