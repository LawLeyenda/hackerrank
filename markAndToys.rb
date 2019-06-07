def maximumToys(prices, k)
  arrayPrices = prices.sort
  money = k
  counter = 0
  
  arrayPrices.each_with_index do |x, y|
    
    if arrayPrices[y] <= money
      money = money - arrayPrices[y]
      counter += 1
    else
      return counter
    end
  end
  counter
end

prices = [4, 2, 1, 3]
money = 7

p maximumToys(prices, money)