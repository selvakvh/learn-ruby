module Palindrome
  def palindrome?
    processed_content == processed_content.reverse
  end
end

class String
  include Palindrome
  def processed_content
    downcase
  end
end

p(
  'Racecar'.palindrome?
)

class Integer
  include Palindrome
  def processed_content
    to_s
  end
end

p(
  12_321.palindrome?
)
