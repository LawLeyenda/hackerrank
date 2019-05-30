c = %w{0 0 1 0 0 1 0}

def jumpingOnClouds(c)
  currentInd = 0
  steps = 0
  
  while currentInd <= c.length - 2
    if c[currentInd + 2].to_i.zero?
      currentInd += 2
      steps += 1
    else
      currentInd += 1
      steps += 1
    end
  end
  steps
end
p jumpingOnClouds(c)
  

