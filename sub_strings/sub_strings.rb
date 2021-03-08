def substrings(string, word_list)
  string.downcase!
  string_arr = string.split(/[^\w]/).reject { |w| w.empty? }
  word_list.reduce(Hash.new(0)) do |hash, word|
    string_arr.each { |w| hash[word] += 1 if w.include? word }
    hash
   end
end

dictionary = ["below","down","go","going","horn","how","howdy","it","i","low","own","part","partner","sit"]
p substrings("Howdy partner, sit down! How's it going?",dictionary)