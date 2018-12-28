def alphabetize(arr)
  # code here
  alphabet = "abcĉdefgĝhĥijĵklmnoprsŝtuŭvz"
  alphabet_hash = {}
  alphabet.each_char.with_index do |char, index|
    alphabet_hash[char] = index
  end
  arr.sort_by do |first|
    alphabet_hash[first.each_char {|char|}]
  end
  # arr
end
