def caesar(string, key)
  result = ""
  shift = get_shift(key)
  string.chars.map do |char|
    chr = char.ord
    if chr.between?(65, 90) 
      chr += shift
      chr += 26 if chr < 65
      chr -= 26 if chr > 90
    elsif chr.between?(97, 122)
      chr += shift
      chr += 26 if chr < 97
      chr -= 26 if chr > 122
    end
    result += chr.chr
  end
  result
end

def get_shift(key)
  return (key % 26) - 26 if key < 0
  key % 26
end
