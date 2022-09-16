
module Palindrome
  def palindrome?
    processed_content == processed_content.reverse
  end

  def processed_content
    to_s.downcase.scan(/[a-z]/)
  end
end

class String
  include Palindrome
end
