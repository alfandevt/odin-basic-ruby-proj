# 65 -> ASCII 'A'
# 97 -> ASCII 'a'
# 26 -> Total Alphabets

def caesar_cipher(text, shift)
  temp_text = text.split(' ').map do |word|
    temp_word = word.split('').map do |char|
      if char.ord.between?(65, 65 + 26)
        ((char.ord + shift - 65) % 26 + 65).chr
      elsif char.ord.between?(97, 97 + 26)
        ((char.ord + shift - 97) % 26 + 97).chr
      else
        char
      end
    end
    temp_word.join('')
  end
  temp_text.join(' ')
end

p caesar_cipher('What a string!', 5)
