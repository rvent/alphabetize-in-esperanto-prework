def alphabetize(arr)
  # code here
  alphabet = "abcĉdefgĝhĥijĵklmnoprsŝtuŭvz"
  alphabet_hash = {}
  alphabet.each_char.with_index do |char, index|
    alphabet_hash[char] = index
  end
  arr.sort_by do |first, next|
    count = 0
    while alphabet_hash[first[count]] == alphabet_hash[next[count]]
  # arr
end
