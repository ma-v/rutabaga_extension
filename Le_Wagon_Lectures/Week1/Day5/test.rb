students = {
  'Peter' => {'age' => 24, 'town' => 'Toulon'},
  'Mav' => [25, 'Marseille'],
  'Joachim' => 27
}

students.each { |key, value| puts "#{key}: #{value}." }

marseille = {
  country: 'France',
  population: 4_434_553
}

valparaiso = {
  country: 'Chile',
  population: 455_242_425
}

p valparaiso[:country]

def student_data(attributes)
  attributes[:birth_town] = "Unknown" unless attributes.key?(:birth_town)
  return "#{attributes[:first_name]}, #{attributes[:âge]}, #{attributes[:city]}"
end

thugmav = {first_name: "Mav", âge: 23, city: "Marseille"}
p student_data(thugmav)
p thugmav
