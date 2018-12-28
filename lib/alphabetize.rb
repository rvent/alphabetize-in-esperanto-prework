def alphabetize(arr)
  # code here
  alphabet = "abcĉdefgĝhĥijĵklmnoprsŝtuŭvz"
  alphabet_hash = {}
  alphabet.each_char.with_index do |char, index|
    alphabet_hash[char] = index
  end
  short_list = arr.sort_by {|word| word.length}
  count = 0
  while count < short_list[0].length
    arr.sort_by do |word|
      alphabet_hash[word[count]]
    end
    count += 1
  end
  # arr
end
