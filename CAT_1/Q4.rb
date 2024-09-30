class BracketChecker
  def balanced_parentheses(str)
    pairs = { '(' => ')', '{' => '}', '[' => ']', '<' => '>' }
    stack = []
    
    str.each_char.with_index do |char, idx|
      if pairs.key?(char)
        stack.push([char, idx])
      elsif pairs.value?(char)
        return "Unbalanced at position: #{idx + 1}" if stack.empty? || pairs[stack.last[0]] != char
        stack.pop
      end
    end
    
    stack.empty? ? true : "Unbalanced at position: #{stack.last[1] + 1}"
  end

  def evaluate_expression(str)
    return balanced_parentheses(str) unless balanced_parentheses(str) == true

    exprs = str.scan(/\([^)]+\)/)

    exprs.each do |expr|
      result = eval(expr[1..-2]) 
      str.sub!(expr, result.to_s)
    end
    
    str
  end
end

checker = BracketChecker.new

puts checker.balanced_parentheses("(11)")              
puts checker.balanced_parentheses("|(|)])")           
puts checker.balanced_parentheses("<(1+2) (3+4)>")    

puts checker.evaluate_expression("(1+2) (3+4)")        