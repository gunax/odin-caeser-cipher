#! /usr/bin/env ruby

def caeser_cipher(str,n)
  output = ""
  str.split("").each do |c|
    case
    when c.match(/[a-z]/)
      num = (c.bytes[0]+n)
      if num > 122
        num-=26
      end
      output << (num.chr)
    when c.match(/[A-Z]/)
      num = (c.bytes[0]+n)
      if num > 90
        num-=26
      end
      output << (num.chr)
    else
      output << (c)
    end
  end
    return output
end

puts( caeser_cipher("What a string", 5) )
