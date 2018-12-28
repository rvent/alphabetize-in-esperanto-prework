def alphabetize(arr)
  # code here
  alphabet = "abcĉdefgĝhĥijĵklmnoprsŝtuŭvz"
  arr.sort_by do |word|
    alphabet.each_char.with_index do |char, i|
      if word[0] == char
        i
      end
    end
  end
  # arr
end
