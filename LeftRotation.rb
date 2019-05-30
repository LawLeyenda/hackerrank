def rotLeft(a, d)
  
  d.times do
  a.push(a[0])
  a.shift
  end
  a
end

arr = %w{1 2 3 4 5}

p rotLeft(arr, 4)