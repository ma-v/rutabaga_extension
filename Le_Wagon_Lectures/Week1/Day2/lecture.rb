def say_hi(first_name)
  return "Hi #{first_name}!!!"
end

def plus_one(number)
  return number + 1
end

def full_name(first_name, last_name = "Dupont")
  return "#{first_name.capitalize} #{last_name.capitalize}"
end

my_number = 3

puts say_hi('John')
puts say_hi('Paul')
puts say_hi('Ringo')
puts plus_one(my_number)
puts plus_one(plus_one(my_number))
puts full_name('Mav')

