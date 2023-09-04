dictionary = [
  "below", "down", "go", "going",
  "horn", "how", "howdy", "it", "i",
  "low", "own", "part", "partner", "sit",
]

def substrings(string, dictionary)
  string = string.downcase
  result = {}
  dictionary.each do |word|
    result[word] = string.scan(word).length if string.include?(word)
  end
  result
end

p substrings("Howdy govnah, sit down! How's it going?", dictionary)
