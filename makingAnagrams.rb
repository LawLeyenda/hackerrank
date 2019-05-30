def makeAnagram(a, b)
  a = a.split(//)
  b = b.split(//)
  (a + b).each do |x|
    if a.include?(x) && b.include?(x)
      a.delete_at(a.index(x))
      b.delete_at(b.index(x))
    end
  end
  a.length + b.length
end

a = 'fcrxzwscanmligyxyvym'
b = 'jxwtrhvujlmrpdoqbisbwhmgpmeoke'

p makeAnagram(a, b)