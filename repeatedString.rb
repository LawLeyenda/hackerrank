def repeatedString(s, n)
  s_len = s.length
  counter = s.count('a')
  sum = ((n/s_len).floor * counter)
  sum

  mod = n % s_len
  lastBit = s[0...mod].count('a')
  sum + lastBit
end

s = 'ojowrdcpavatfacuunxycyrmpbkvaxyrsgquwehhurnicgicmrpmgegftjszgvsgqavcrvdtsxlkxjpqtlnkjuyraknwxmnthfpt'
n = 685118368975

#41107102139
p repeatedString(s,n)
