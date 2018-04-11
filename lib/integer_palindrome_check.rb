# Returns true if the input positive integer number forms a palindrome. Returns false otherwise.
def is_palindrome(number)

  return false if number == nil || number.class != Integer || number < 0

  digits_in_number = find_num_digits(number)

  palindrome = true

  (1...digits_in_number / 2).each do |digit|
    begin_digit = (number / 10 ** (digits_in_number - digit)) % 10
    end_digit = (number % 10 ** digit) / (10 ** (digit - 1))
    if begin_digit == end_digit
      palindrome = true
    else
      palindrome = false
      break
    end
  end
  return palindrome
end

def find_num_digits(number)
  num = 1
  while number / 10 ** num != 0
    num += 1
    return num
  end

end
