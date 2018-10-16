def letters()
  roman_stuff = {
  	1000 => "M",
  	900 => "CM",
  	500 => "D",
  	400 => "CD",
  	100 => "C",
  	90 => "XC",
  	50 => "L",
  	40 => "XL",
  	10 => "X",
  	9 => "IX",
  	5 => "V",
  	4 => "IV",
  	1 => "I"
  }
  return roman_stuff
end

def arabic()
	arabic_stuff = {
	"M" => 1000,
	"CM" => 900,
	"D" => 500,
	"CD" => 400,
	"C" => 100,
	"XC" => 90,
	"L" => 50,
	"XL" => 40,
	"X" => 10,
	"IX" => 9,
	"V" => 5,
	"IV" => 4,
	"I" => 1
  }
end

def roman_converter(number)
  number = number
  p number
  answer = ""
  letters().each do |key, value|
  	unless number < key
  		stuff = number / key
  		things = number % key
  		if stuff > 0
  			stuff.times do
  				answer << value
  			end
  			number = things
  		end
  	end
  end
  return answer
end

def arabic_converter(numeral)
	numeral = numeral
	numeral_array = numeral.split('')
	counter = 0
	numeral_array.each do|element|
		unless numeral_array[counter].class == Integer
		case element
		when "C"
		if numeral_array[counter + 1] == "M"
          numeral_array[counter] = "CM"
          numeral_array[counter + 1] = 0
        elsif numeral_array[counter + 1] == "D"
          numeral_array[counter] = "CD"
          numeral_array[counter + 1] = 0   
        end
      when "X"
        if numeral_array[counter + 1] == "C"
          numeral_array[counter] = "XC"
          numeral_array[counter + 1] = 0
        elsif numeral_array[counter + 1] == "L"
          numeral_array[counter] = "XL"
          numeral_array[counter + 1] = 0   
        end 
      when "I"
        if numeral_array[counter + 1] == "X"
          numeral_array[counter] = "IX"
          numeral_array[counter + 1] = 0
        elsif numeral_array[counter + 1] == "V"
          numeral_array[counter] = "IV"
          numeral_array[counter + 1] = 0   
        end 
      end
    end
    counter += 1
  end
  final_answer = 0
  numeral_array.each do |things|
    if things.class == String
      things = arabic[things]
    end
    final_answer += things
  end                    
  return final_answer
end






# def numerals(numbers)
# 	letters = %w(M,CM,D,CD,C,XC,L,XL,X,IX,V,IV,I)
# 	values = [1000,900,500,400,100,90,50,40,10,9,5,4,1]
# 	empire = letters.zip values
#  	n = numbers
#   	numerals = "Charger"
#   	empire.each do |v|
#     numerals += v[0]*(n/v[1])
#     n = n%v[1] 
#   end
#   return numerals
# end

# def romans(stuff)
# 	letters = %w(CM M CD D XC C XL L IX X IV V I)
# 	values = [1000, 900, 500, 400, 100, 90, 50, 40, 10, 9, 5, 4, 1]
# 	romans_num = letters.zip values
# 	number = stuff.to_s
# 	stuff = values
# 	p number
# 	p stuff
# 	romans_num.times do |s|
# 		number ! v[1] * number.scan(/#{v[0]}/)
# 		number = number.scan(/#{v[0]}/)
# 	end
# 	return numerals
# end



# def romans(whatever)
#   letters = %w(CM M CD D XC C XL L IX X IV V I)
#   values = [900, 1000, 400, 500, 90, 100, 40, 50, 9, 10, 4, 5, 1]
#   romans_num = letters.zip values
#   number = whatever.to_s
#   romans_num.each do |v|
#     number += v[1]*number.scan(/#{v[0]}/).count
#     number = number.scan(/#{v[0]}/, "")
#   end
#   return number
# end





# def numerals(arab, rom)
#   	number_key = {
#     1000 => "M", 900 => "CM", 500 => "D", 400 => "CD",
#     100 => "C", 90 => "XC", 50 => "L", 40 => "XL",
#     10 => "X", 9 => "IX", 5 => "V", 4 => "IV", 1 => "I",
#     }
# end

# def arabic(arab, rom)
# 	number_key = {
#     400 => "CD", 900 => "CM", 90 => "XC", 40 => "XL", 9 => "IX",
#     4 => "IV", 1000 => "M", 500 => "D", 100 => "C", 50 => "L",
#     10 => "X", 5 => "V", 1 => "I"
# 	}
#   numeral_key = number_key.invert
#   return numeral_key
# end

# def romanize(n, hash)
#   if n == 0
#   return ""
# elsif hash == numerals
#     roman = ""
#     hash.each do |value, letter|
#       roman << letter*(n / value)
#       n = n % value
#     end
#     return roman
#   elsif hash == numerals_reversed
#     roman = 0
#     hash.each do |value, letter|
#       roman += letter * n.scan(/#{value}/).count()
#       n = n.sub(/#{value}/, "")
#     end
#     return roman
#   end
# end
