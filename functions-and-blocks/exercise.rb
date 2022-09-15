99.downto(1) do |number|
  puts "#{number} bottle#{number == 1 ? '' : 's'} on the wall"
end

def email_parts(email)
  email.downcase.split('@')
end

puts email_parts('selva.home@gmail.com')

def palindrome?(string)
  string.downcase!
  string == string.reverse
end

puts palindrome?('Racecar')
