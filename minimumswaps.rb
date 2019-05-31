#going to do mergesort
#or not mergesort is too good

#this code work it just times out
def minimumSwaps(arr)
  counter = 0
  (0..(arr.length - 1)).each do |x|
    place = x + 1
    if (arr[x] != place)
      counter += 1
      swap = arr.find_index(x + 1)
      arr[swap] = arr[x]
      arr[x] = place
    end
  end
  counter
end

arr1 = [1, 3 ,5, 2 ,4, 6, 7]
p minimumSwaps(arr1)

