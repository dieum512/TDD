class Solver
  def factorial(num)
    factor = 1
    if num.zero?
      factor
    elsif num.negative?
      raise 'Input must be positive'
    else
      (1..num).each do |x|
        factor *= x
      end
      factor
    end
  end

  def reverse(input)
    input.reverse
  end

  def fizzbuzz(input)
    if (input % 3).zero? && (input % 5).zero?
      'fizzbuzz'
    elsif (input % 3).zero?
      'fizz'
    elsif (input % 5).zero?
      'buzz'
    else
      input.to_s
    end
  end
end
