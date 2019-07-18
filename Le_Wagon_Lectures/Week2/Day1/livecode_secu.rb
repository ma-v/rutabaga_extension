REGEX_SECU = /^(?<gender>1|2)\s?(?<year>\d{2})\s?(?<month>0[1-9]|1[0-2])\s?(?<zip>\d{2}|2a|2b)\s?(?<key_one>\d{3})\s?(?<key_two>\d{3})\s?(?<key_three>\d{2})$/

def secu(string)
  secu = string.match(REGEX_SECU)
  if secu.nil?
    return "The ssn is invalid"
  else
    gender = secu[:gender]
    year = secu[:year]
    month = secu[:month]
    zip = secu[:zip]
    key = secu[:key_one] + secu[:key_two]
    key_three =


  end
end

test_secu = "1 84 12 76 451 089 46"
