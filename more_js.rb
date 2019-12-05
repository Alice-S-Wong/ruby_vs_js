# 1. Write a function that reverses a string. Don’t use the “reverse” method! (Note: you can use the .split(“”) method to convert a string into an array of characters).


# def reverse(string)
#   string_array = string.split("")
#   new_array = []
#   index = string_array.length - 1
#   while index >= 0
#     new_array << string_array[index]
#     index -= 1
#   end
#   reversed_string = new_array.join
#   return reversed_string
# end

# p reverse("zombie")

# 2. Write a function that accepts a string and returns the number of times that the letter “a” occurs in it.

# def frequency(string)
#   string_array = string.split("")
#   count = 0
#   string_array.each do |letter|
#     if letter == "a"
#       count += 1
#     end
#   end
#   return count
# end

# p frequency("mathematics")

# def frequency(string)
#   string_array = string.split("")
#   letter_frequency = {}
#   string_array.each do |letter|
#     if letter_frequency[letter]
#       letter_frequency[letter] += 1
#     else
#       letter_frequency[letter] = 1
#     end
#   end
#   return letter_frequency["a"]
# end

# p frequency("mathematics")

# 3. Write a function that accepts two arguments. The first argument is an array of numbers that are in ascending order. The second argument is a number to search for within the array. The function should do a linear search and return the index at which this value is found, or it should return nil if the value is not found. See if there’s a way in which you can optimize this method to keep its number of steps to a minimum! Note: Do not use the “index” method!

# def search(array, integer)
#   index = 0
#   result = nil
#   while index < array.length
#     if array[index] == integer
#       result = index
#       break
#     end
#     index += 1
#   end
#   return result
# end

# p search([1, 2, 3, 4, 5, 6, 7, 8, 9], 5)

# 4. Write a function that accepts two arguments. The first argument is an array of numbers that are in ascending order. The second argument is a new number that is not yet in the array. The function should return a new array with the new number inserted in the proper place. Do not use the “sort” method!

# 1. shovel all numbers less than new number into new array. 
# 2. shovel new number into array
# 3. shovel remaining numbers into array

# def insert(array, integer)
#   index = 0
#   new_array = []
#   while index < array.length
#     if array[index] < integer
#       new_array << array[index]
#     else
#       break
#     end
#     index += 1
#   end
#   new_array << integer
#   while index < array.length
#     new_array << array[index]
#     index += 1
#   end
#   return new_array
# end

# p insert([1, 3, 5, 7, 9], 5)

# 5. Write a function that accepts two arguments. The first argument is an array of numbers that are in ascending order. The second argument is a number that is contained within the array. The function should return the string “lower” if the value is found in the lower half of the array, and it should return “higher” if the value is found within the greater half of the array. Try to optimize this algorithm so that it takes a minimum number of steps!

def high_or_low(array, integer)
  is_even = array.length.even?
  result = nil
  if is_even == false
    middle_index = array.length / 2
    if integer > array[middle_index]
      result = "higher"
    elsif integer < array[middle_index]
      result = "lower"
    end
  elsif is_even == true
    lower_middle_index = array.length / 2 - 1
    upper_middle_index = array.length / 2
    if integer <= array[lower_middle_index]
      result = "lower"
    elsif integer >= array[upper_middle_index]
      result = "higher"
    end
  end
  p result
end

high_or_low([1, 3, 5, 7, 9], 5)