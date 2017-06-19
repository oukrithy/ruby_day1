# Write a loop that prints from 1 to 20.
1.upto(20) do |i|
  puts i
end

# Do it again counting down from 20 to 1.
20.downto(1) do |i|
  puts i
end
# Write a program which takes a number and prints "Valid" if the number is between 1 and 10 (inclusive) and "Invalid" otherwise.
def num_checker
  number = gets.to_i
  if number.between?(1, 10)
    puts "valid"
  else
    puts "invalid"
  end
end
# Write a program that prints the numbers from 1 to 100. But for multiples of three print Fizz instead of the number and for the multiples of five print Buzz. For numbers which are multiples of both three and five print FizzBuzz

1.upto(100) do |i|
  if i % 15 == 0
    puts "FizzBuzz"
  elsif i % 3 == 0
    puts "Fizz"
  elsif i % 5 == 0
    puts "Buzz"
  else
    puts i
  end
end

# Create a method called sum_these_numbers which takes two integers as an argument and prints their sum to the screen.

def sum_these_numbers num1, num2
  print num1 + num2
end

# Create a method called is_even, which takes a single integer, and which then returns true if the number is even, and false otherwise.
def is_even num
  if num % 2 == 0
    puts true
  else
    puts false
  end
end

# Create an array of words. Iterate through the array using .each and a block, then print each of those words in all capitals.

word_list = ["one", "two", "three", "four"]

word_list.each do |f|
  puts f.upcase
end

# Write a method which calls another method, then uses its return value.
# see password checker

# Write a function called valid_date that prompts the user for a date with a month, date, and year (all numerically expressed) and returns 'true' if this date exists and 'false' if it does not (for example: 7 28 2014 exists, but 22 34 1999 does not). Make sure to account for leap years. This program is easiest if you prompt for the month, date, and year separately.
