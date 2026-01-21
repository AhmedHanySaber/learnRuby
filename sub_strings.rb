def substrings(word,dictionary)
  search_text=word.downcase

  dictionary.each_with_object(Hash.new(0)) do |word,result|

    matches = search_text.scan(word.downcase).length

    result[word]=matches if matches>0
  end
end

# Testing it out:
dictionary = ["below","down","go","going","horn","how","howdy","it","i","low","own","part","partner","sit"]
puts substrings("below", dictionary)
# Output: {"below"=>1, "low"=>1}

puts substrings("Howdy partner, sit down! How's it going?", dictionary)
# Output: {"down"=>1, "go"=>1, "going"=>1, "how"=>2, "howdy"=>1, "it"=>2, "i"=>3, "own"=>1, "part"=>1, "partner"=>1, "sit"=>1}
puts substrings("Howdy partner, sit down! How's it going?", dictionary)
# { "down" => 1, "go" => 1, "going" => 1, "how" => 2, "howdy" => 1, "it" => 2, "i" => 3, "own" => 1, "part" => 1, "partner" => 1, "sit" => 1 }
