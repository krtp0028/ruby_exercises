dictionary = ["below","down","go","going","horn","how","howdy","it","i","low","own","part","partner","sit"]
words = "Howdy partner, sit down! How's it going?"

def sub_strings(words, dictionary)
    hash = {}
    words = words.downcase
    dictionary.each do |dict|
        count = words.scan(dict).length
        if count != 0
            hash[dict] = count
        end
    end
    hash
end

puts sub_strings(words, dictionary)