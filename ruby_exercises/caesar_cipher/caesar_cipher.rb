require 'pry'

def caesar_cipher(str, num)
    result = ''
    arr = str.chars.map{|c| c.ord} 
    arr.each do |c|
        if (c>= 65 && c<= 90) || (c >= 97 && c <= 122)
            range = if c < 97
                65
            else
                97
            end
            temp = c + num - range
            temp += range
            result += temp.chr
        else
            result += c.chr 
        end
    end
    result
end


msg = 'SW DFG HJKL'
msg = caesar_cipher(msg, 5)
puts msg
