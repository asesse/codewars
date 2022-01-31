class TitleCase

  def initialize(title, minor_words = '')
    @title = title.downcase.split
    @minor_words = minor_words.downcase.split if minor_words
  end
  
  def solve
    convert
    @title[0].capitalize!
    return @title.join(' ')
  end
  
  def convert
    @title[1..-1].each { |w| w.capitalize! if !@minor_words.include?(w) }
  end
end


puts TitleCase.new('a clash of KINGS', 'a an the of').solve # should return: 'A Clash of Kings'
puts TitleCase.new('THE WIND IN THE WILLOWS', 'The In').solve # should return: 'The Wind in the Willows'
puts TitleCase.new('the quick brown fox').solve # should return: 'The Quick Brown Fox'