class String
  def toJadenCase
   self.split(" ").each{|word| word.capitalize!}.join(" ")
  end
end