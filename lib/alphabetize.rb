def alphabetize(arr)
  # code here
  alphabet = "abcĉdefgĝhĥijĵklmnoprsŝtuŭvz"
  arr.sort_by {|word| alphabet.include?(word[0].downcase})
  # arr
end
