planets = ['Mercury', 'Venus', 'Earth', 'Mars', 'Jupiter', 'Saturn', 'Uranus', 'Neptune']

planetInitials = []
planets.each{|planet| planetInitials << planet[0] }

planetHash = planets.zip(planetInitials).to_h
p planetHash.values

