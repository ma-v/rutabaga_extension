musicians = ['Nicolas Jaar', 'James Blake', 'Fat WF']

for musician in musicians
  puts "#{musicians.index(musician)} - #{musician}"
end

musicians << 'France Gall'
puts musicians

for index in 0...(musicians.length)
  puts "#{index + 1}-#{musicians(index)}"
end
