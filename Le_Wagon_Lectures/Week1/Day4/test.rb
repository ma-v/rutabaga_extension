# musicians = ['Roger Watters', 'Nicolas Jaar', 'James Blake', 'Fat WF']

# # for musician in musicians
# #   puts "#{musicians.index(musician)} - #{musician}"
# # end

# # musicians << 'France Gall'

# # for index in (0...musicians.length)
# #   puts "#{index}- #{musicians[index]}"
# # end

# # musicians.each { |musician| puts "#{musicians.index(musician)}-#{musician}" }

# # musicians.each_with_index {|musician, index| puts "#{index}-#{musician}"}

# # upcase_musicians = []

# # musicians.each {|musician| upcase_musicians << musician.upcase}

# # p upcase_musicians

# # upcase_musicians_2 = musicians.map { |musician| musician.upcase }

# # p upcase_musicians_2

# r_musicians = []

# musicians.map { |musician| r_musicians << musician if musician.start_with?('R') }

# p r_musicians

# p musicians.count {|musician| musician.start_with?("N")}

def timer
  puts "I'm in the timer before yield"
  start = Time.now
  yield('Nique ta mère') if block_given?
  puts "I'm in the timer after yield"
  stop = Time.now
  return stop - start
end

time = timer do |message|
  puts "This is the message #{message}"
  sleep 1
end

p time






































