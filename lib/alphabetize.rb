def alphabetize(arr)
  # code here
  alphabet = "abcĉdefgĝhĥijĵklmnoprsŝtuŭvz"
  alphabet_hash = {}
  alphabet.each_char.with_index do |char, index|
    alphabet_hash[char] = index
  end
  arr.sort_by do |first, next|
    count = 0
    while true
      if alphabet_hash[first[count]] == alphabet_hash[next[count]]
        count += 1
      else
        alphabet_hash[first[count]] <=> alphabet_hash[next[count]]
        break
      end
  # arr
end
