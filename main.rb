
def caesar_cipher(string, shift = 0)
  # uses zip to concat two array into a hash and
  # rotate to iterate through the array for the given number of times
  encrypt = ([*('a'..'z')].zip([*('a'..'z')].rotate(shift)) + [*('A'..'Z')].zip([*('A'..'Z')].rotate(shift))).to_h

  # uses map fetch and join to make  a new array with the letters changed
  p string.each_char.map { |char| encrypt.fetch(char, char) }.join

end

caesar_cipher("What a string!", 5)
