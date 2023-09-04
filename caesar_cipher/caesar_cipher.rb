def caesar_cipher(string, shift_factor)
  string.chars.map do |char|
    if char =~ /[a-zA-Z]/
      ascii_start = char =~ /[A-Z]/ ? 65 : 97
      char_index = char.ord - ascii_start
      shifted_index = char_index + shift_factor
      shifted_char = (shifted_index % 26 + ascii_start).chr
      shifted_char
    else
      char
    end
  end.join
end

p caesar_cipher("Morgan Freeman", 3)
