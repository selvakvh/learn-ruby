class Phrase < String
  def processed_phrase
    downcase
  end

  def palindrome?
    processed_phrase == processed_phrase.reverse
  end
end

class TranslatedPhrase < Phrase
  def initialize(content, translation)
    super(content)
    @translation = translation
  end

  def processed_phrase
    @translation.downcase
  end
end
p Phrase.new('Racecar').palindrome?
p TranslatedPhrase.new('recognize', 'reconocer').palindrome?
