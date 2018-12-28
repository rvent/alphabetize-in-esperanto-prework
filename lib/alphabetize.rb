def alphabetize(arr)
  # code here
  alphabet = "abcĉdefgĝhĥijĵklmnoprsŝtuŭvz"
  alphabet_hash = {}
  alphabet.each_char.with_index do |char, index|
    alphabet_hash[char] = index
  end

  arr.sort_by do |word|
    word.each_char do |char|
      alphabet_hash[char]
    end
  end
  # arr
end
