def isValid(s)
  supercount = 0
  count = 0
  splitedStr = s.split(//)
  hash = Hash.new(0)
  splitedStr.each{|key| hash[key] += 1}

  hash2 = Hash.new(0)
  hash.each{|key, value| hash2[value] += 1}
  mostCommon = hash2.max_by{|k,v| v}[0].to_i
  p hash
  p mostCommon
  hash.each do |key , value|
    if value > mostCommon + 1 || value < mostCommon - 1 && value != 1
      return "NO"
    end
  
    if value > mostCommon || value < mostCommon
      count += 1
    end
  end

  if count > 1 || supercount > 1
    return "NO"
  else
    return "YES"
  end
end
str = "aaaaabc"
p isValid(str)