# frozen_string_literal: true

dictionary = %w[below down go going horn how howdy it i low own part partner sit]

def subcadenas(string, dictionary)
  string = string.downcase
  hash = {}

  dictionary.each do |word|
    matches = string.scan(word).length
    hash[word] = matches if matches.positive?
  end
  p hash
end

subcadenas("Howdy partner, sit down! How's it going?", dictionary)
