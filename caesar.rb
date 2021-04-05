# Caesars Cipher
# crypt a string by shifting letters in message by 'X' in alphabet

def alpha?(c)
    c.between?('a', 'z') || c.between?('A', 'Z')
end

def caesar_cipher(message, shift)
    crypted_message = ""
    
    message.each_char do |letter|
        ascii_offset = letter.ord < 91 ? 'A'.ord : 'a'.ord
        
        if alpha?(letter)
            crypted_message += (((letter.ord - ascii_offset) + shift) % 26 + ascii_offset).chr
        else
            crypted_message += letter
        end
    end

    puts crypted_message
end