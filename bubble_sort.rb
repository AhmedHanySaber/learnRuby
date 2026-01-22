def bubble_sort(arr)
  len = arr.length
  # The outer loop needs to run len times to ensure everything is moved
  for i in 0..len - 1
    # We use len - 2 because we are comparing arr[j] with arr[j+1]
    for j in 0..len - 2 - i
      if arr[j] > arr[j + 1]
        arr[j], arr[j + 1] = arr[j + 1], arr[j]
      end
    end
  end
  arr # Return the array so it can be printed
end

print bubble_sort([4, 3, 78, 2, 0, 2])
# Output: [0, 2, 2, 3, 4, 78]