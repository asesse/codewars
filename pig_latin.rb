def pig_it(text)
  text.split(" ")
      .map { |w| "#{w}#{w[0]}#{'ay'}" }
      .map { |w| w.sub(w[0], '') }
      .map { |w| w.match(/\A\W/) ? w.sub(w[1..], '') : w }
      .join(" ")
end

puts pig_it('Pig latin is cool') # igPay atinlay siay oolcay
puts pig_it('Hello world !')     # elloHay orldway !