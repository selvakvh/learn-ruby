module Palindrome
  def palindrome?
    processed_content == processed_content.reverse
  end

  private

  def processed_content
    to_s.downcase
  end

end

class String
  include Palindrome
end

p(
  'Racecar'.palindrome?
)

class Integer
  include Palindrome
end

p(
  12_321.palindrome?
)
