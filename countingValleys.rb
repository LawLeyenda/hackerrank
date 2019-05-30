n = 0
s = "DDUUDDUDUUUD"


def countingValleys(n, s)
  arr = (s.split(//).map! {|letter|
    (letter == "U") ? 1 : -1})
  altitude = 0
  counter = 0
  arr.each do |num|
    altitude += num
    counter += 1 if (altitude == 0) & (num == 1)
  end
  counter
end


countingValleys(n, s)
