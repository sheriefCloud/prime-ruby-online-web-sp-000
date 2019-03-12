# 
#
# def prime?(number)
#   if number%2 || number == 1
#     return flase
#   else
#
#   end
#
# end

def divisible_by_remaining_odd_numbers?(n)
  potential_divisors = (3..Math.sqrt(n)).step(2).to_a
  divisible = false
  potential_divisors.each do |x|
    if n % x != 0
      potential_divisors.delete_if { |y| y % x == 0 }
    else
      divisible = true
      potential_divisors = []
    end
  end

  divisible

end


def prime?(n)
  if n == 2
    true
  elsif n <= 1 || n.even?
    false
  else
    divisible_by_remaining_odd_numbers?(n) ? false : true
  end
end
