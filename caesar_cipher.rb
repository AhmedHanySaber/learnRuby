def caesar_cipher(string, shifter)
  keys = (1..26)
  values = ('a'..'z')
  alphabet_map = keys.zip(values).to_h
  
  shifted_string = ""
  
  string.downcase.each_char do |char|
    if char =~ /[a-z]/
      # 1. Find the current number (1-26)
      current_num = alphabet_map.key(char)
      
      # 2. Apply shift with modulo 26
      # (Subtract 1 to make it 0-indexed for the math, then add 1 back)
      new_num = ((current_num + shifter - 1) % 26) + 1
      
      # 3. Look up the new letter in the map
      shifted_string += alphabet_map[new_num]
    else
      # Keep punctuation/spaces as they are
      shifted_string += char
    end
  end

  shifted_string
end

# --- PART 2: The Action (Call) ---
# This must be at the BOTTOM
puts caesar_cipher("What a string!", 1)