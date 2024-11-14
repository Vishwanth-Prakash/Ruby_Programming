require 'minitest/autorun'
require 'benchmark'
require 'ruby-prof'

def VIT_register_student(name, age)
  if age < 18
    raise "Age must be 18 or older"
  else
    return "#{name} registered successfully!"
  end
end

class TestVITRegisterStudent < Minitest::Test
  def test_VIT_register_student
    assert_equal "Vishwa registered successfully!", VIT_register_student("Vishwa", 20), "The registration should succeed for Vishwa"
    assert_equal "Bruce registered successfully!", VIT_register_student("Bruce", 19), "The registration should succeed for Bruce"
    assert_raises(RuntimeError) { VIT_register_student("Bob", 17) }
  end
end

def benchmark_VIT_register_student
  time = Benchmark.realtime do
    result = VIT_register_student("Vishwa", 20)
    puts result
  end
  puts "Benchmark: Registration time is #{time} seconds"
end

def profile_VIT_register_student
  RubyProf.start
  VIT_register_student("Vishwa", 20)
  result = RubyProf.stop

  printer = RubyProf::FlatPrinter.new(result)
  printer.print(STDOUT)
end

puts "Running Assertions..."
Minitest.run

puts "\nBenchmarking VIT Register Student:"
benchmark_VIT_register_student

puts "\nProfiling VIT Register Student:"
profile_VIT_register_student
