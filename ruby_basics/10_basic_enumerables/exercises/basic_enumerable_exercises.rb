def display_current_inventory(inventory_list)
  # use #each to iterate through each item of the inventory_list (a hash)
  # use puts to output each list item "<key>, quantity: <value>" to console
  inventory_list.each do |key, value|
    puts "#{key}, quantity: #{value}"
  end
end

require 'pry-byebug'
def display_guess_order(guesses)
  # use #each_with_index to iterate through each item of the guesses (an array)
  # use puts to output each list item "Guess #<number> is <item>" to console
  # hint: the number should start with 1
  guesses.each_with_index do |item, number| 
    puts "Guess ##{number + 1} is #{item}"
    # binding.pry
  end
end
# display_guess_order(['cookies', 'cake', 'ice cream'])
def find_absolute_values(numbers)
  # use #map to iterate through each item of the numbers (an array)
  # return an array of absolute values of each number
  numbers.map {|number| number.abs}
  # numbers.map do |number|
  #   if number < 0
  #     number * -1
  #   else
  #     number
  #   end
  # end
end
#find_absolute_values([1,4,-4,6,-9])
def find_low_inventory(inventory_list)
  # use #select to iterate through each item of the inventory_list (a hash)
  # return a hash of items with values less than 4
  inventory_list.select {|k,v| v < 4}
end
#require 'pry-byebug'
def find_word_lengths(word_list)
  # use #reduce to iterate through each item of the word_list (an array)
  # return a hash with each word as the key and its length as the value
  # hint: look at the documentation and review the reduce examples in basic enumerable lesson
  word_list.reduce({}) do |acc, word|
    acc[word] = word.length
    binding.pry
    acc
  end
end
#find_word_lengths(['poopie', 'diaper', 'baby', 'lol'])