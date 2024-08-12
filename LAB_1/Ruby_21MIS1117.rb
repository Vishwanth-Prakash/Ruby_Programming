puts " enter"
number = gets.chomp.to_i

factorial = 1

i=num

while i>0
    factorial*=i
    i==-1
end

puts "the factorial of #{number} is #{factorial}"