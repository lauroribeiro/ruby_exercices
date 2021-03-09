def bubble_sort(array)
  i = 0
  while(i < array.length - 1)
    j = i + 1
    while(j < array.length)
      if array[i] > array[j]
        aux = array[i]
        array[i] = array[j]
        array[j] = aux
      end
      j += 1
    end
    i += 1
  end
  array
end

p bubble_sort([4,3,78,2,0,2])
# => [0, 2, 2, 3, 4, 78]