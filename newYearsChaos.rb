def minimumBribes(arr)
  countSwap = 0

  len = arr.length

  hash1 = Hash.new(len)
  (1..len).each {|x| hash1[x] = 0}
  
  
  (0..len - 1).each do |x|
    if x + 1 != arr[x]
      hash1[arr[x]] += 1
      hash1[arr[x + 1]] += 1
      if hash1[arr[x]] > 2
        return "Too chaotic"
      end
      if hash1[arr[x+1]] > 2
        return "Too chaotic"
      end
      arr[x], arr[x + 1] = arr[x + 1], arr[x]
      p arr
      countSwap += 1
    end
  end
  countSwap
end


arr = [1, 2 ,5 ,3 ,7 ,8 ,6, 4]
p minimumBribes(arr)
