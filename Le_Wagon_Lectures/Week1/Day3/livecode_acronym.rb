def acronymize(sentence)
  mots = sentence.split
  letters = []
  mots.each do |word|
    letters.push(word[0].upcase)
  end
  return letters.join
end

puts acronymize("Save our souls")
