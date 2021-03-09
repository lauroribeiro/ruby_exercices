def stock_picker(array)
  i = 0
  profit = 0
  while (i < array.length - 1)
    j = i + 1
    while(j < array.length)
      if array[j] - array[i] > profit
        buy = i
        sell = j
        profit = array[j] - array[i]
      end
      j += 1
    end
    i += 1
  end
  [buy,sell]
end


  
p stock_picker([17,3,6,9,15,8,6,1,10])

