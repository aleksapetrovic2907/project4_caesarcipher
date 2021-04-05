# Caesars Cipher
# crypt a string by shifting letters in message by 'X' in alphabet
class String
    
end

class CaesarCipher
    def initialize(message)
        @message = message
    end
    attr_accessor :message

    def encrypt(shift)
        crypted_message = ""
        
        message.each_char do |letter|
            ascii_offset = letter.ord < 91 ? 'A'.ord : 'a'.ord
            
            if alpha?(letter)
                crypted_message += (((letter.ord - ascii_offset) + shift) % 26 + ascii_offset).chr
            else
                crypted_message += letter
            end
        end
        crypted_message
    end

    private
    def alpha?(c)
        c.between?('a', 'z') || c.between?('A', 'Z')
    end

end

inst = CaesarCipher.new('What a string!')
puts inst.encrypt(5)
