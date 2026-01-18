def caesar_cipher(string, shift)
  # We use .map to create a new array of transformed characters, then join them
  string.chars.map do |char|
    if char.match?(/[a-z]/)
      # For lowercase: 'a' is 97. We normalize to 0-25, shift, wrap, then return to 97.
      (((char.ord - 97 + shift) % 26) + 97).chr
    elsif char.match?(/[A-Z]/)
      # For uppercase: 'A' is 65.
      (((char.ord - 65 + shift) % 26) + 65).chr
    else
      # If it's a space or !, just return it as is
      char
    end
  end.join
end

puts caesar_cipher("What a string!", 5)
# => "Bmfy f xywnsl!"