UPPERCASE_LETTERS = [*("A".."Z")]
LOWERCASE_LETTERS = [*("a".."z")]

def letter?(character)
  UPPERCASE_LETTERS.include?(character) || LOWERCASE_LETTERS.include?(character)
end

def caesar_cipher(string, number)
  string_characters = string.split('')
  string_index = string_characters.map do |character|
    if letter?(character)
      if character.upcase == character
        UPPERCASE_LETTERS.index(character) + 26
      elsif LOWERCASE_LETTERS.include?(character)
        LOWERCASE_LETTERS.index(character)
      end
    else
        character
    end
  end
  shifted_string_index = string_index.map do |index|
    if index.class == Integer
      index + number
    else
      index
    end
  end
  shifted_string_characters = shifted_string_index.map do |index|
    if index.class == Integer
      if index > (25 + number)
        UPPERCASE_LETTERS[index % 26]
      elsif index.class == Integer
        LOWERCASE_LETTERS[index % 26]
      else
        index
      end
    else
      index
    end
  end
  puts shifted_string_characters.join
end

caesar_cipher("ShubhamOswal", 2)