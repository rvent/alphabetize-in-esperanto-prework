def alphabetize(arr)
  # code here
  alphabet = "abcĉdefgĝhĥijĵklmnoprsŝtuŭvz"
  alphabet_hash = {}
  alphabet.each_char.with_index do |char, index|
    alphabet_hash[char] = index
  end
  # arr
  helper_func(arr, alphabet_hash, 0)
end

def helper_func(arr, alphabet_hash, count)
  new_arr = arr.sort_by do |word|
    alphabet_hash[word[count]]
  end
  new_arr_sim = new_arr.select {|word| word.start_with?word[0]}
  new_arr_sim.length
  if new_arr_sim_length > 1
    count += 1
    new_arr[0..new_arr_sim_length] = arr[0..new_arr_sim_length].sort_by do |word|
      alphabet_hash[word[count]]
    end
  end
  if new_arr == arr
    return arr
  else
    return helper_func(new_arr, alphabet_hash, count)
  end
end
