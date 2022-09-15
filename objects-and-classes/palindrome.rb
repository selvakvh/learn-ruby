class Phrase
  attr_reader :content

  def initialize(content)
    @content = content
  end

  def palindrome?
    content.downcase == content.downcase.reverse
  end

  def louder
    content.upcase
  end
end

puts Phrase.new("Madam, I'm Adam.")

puts Phrase.new('Racecar').palindrome?

puts Phrase.new('Racecar').louder
