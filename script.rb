example_arr = [2, 4, 12, 1, 3, 9, 13, 5, 8, 2, 16, 3, 0]

def stock_picker(array)
  best_days = [0, 1]
  best_profit = array[1] - array[0]
  min = array[0]

  array.each_with_index do |number,index|
    next if index.zero?

    if number - min > best_profit
      best_profit = number - min
      best_days = [array.find_index(min),index]
    end

    min = number if number < min
  end

  p best_days
  best_days
end

stock_picker(example_arr)
