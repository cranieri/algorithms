def insertion_sort(arr)
   s = arr.size
   (1..(s - 1)).each do |i|
    curr = arr[i]
    j = i
    while (j >= 0 && arr[j - 1] > curr) do
      arr[j] = arr[j - 1]
      j = j - 1
    end
    arr[j] = curr
   end
   arr
end

a = [2, 4, 3, 8, 10, 5]
p insertion_sort(a)
