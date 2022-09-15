class String
  def processed_content
    downcase
  end

  def palindrome?
    processed_content == processed_content.downcase
  end
end

p 'Racecar'.palindrome?
