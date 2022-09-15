class Phrase < String

  def palindrome?
    self.downcase == self.downcase.reverse
  end

  def palindrome2?
    downcase == downcase.reverse
  end
end

puts Phrase.new('Racecar').palindrome2?