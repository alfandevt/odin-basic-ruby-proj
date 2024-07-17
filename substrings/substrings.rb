dictionary = ["below","down","go","going","horn","how","howdy","it","i","low","own","part","partner","sit"]

def substrings(text, dictionary)
  result = Hash.new
  dictionary.each do |word1|
    count = 1
    text.split(" ").each do |word2|
      if word2.downcase.include?(word1.downcase)
        result[word1] = count
        count += 1
      end
    end
  end
  result
end

# p substrings("below", dictionary)
p substrings("Howdy partner, sit down! How's it going?", dictionary)
