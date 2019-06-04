def checkMagazine(magazine, note)
  frequency = Hash.new(0)
  magazine.each {|word| frequency[word] += 1}

  note.each do |word|
    if frequency.has_key?(word) && frequency[word] >= 1
      frequency[word] -= 1
    else
      puts 'No'
      return
    end
  end
  puts 'Yes'
end

mag = %w{ive got a lovely bunch of coconuts}
note = %w{ive got some coconuts}

checkMagazine(mag, note)