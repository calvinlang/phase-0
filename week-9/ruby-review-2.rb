# Cipher Challenge

# I worked on this challenge [by myself, with:]
# I spent [#] hours on this challenge.

# 1. Solution
# Write your comments on what each thing is doing.
# If you have difficulty, go into IRB and play with the methods.

# def dr_evils_cipher(coded_message)
#   input = coded_message.downcase.split("") # Check out this method in IRB to see how it works! Also refer to the Ruby docs.
#     # This method changes the message to a lowercase and then splits it into an array with each letter taking up the element.
#   decoded_sentence = []
#   cipher = {"e" => "a",   # This is technically a shift of four letters...Can you think of a way to automate this? Is a hash
#             "f" => "b",   # the best data structure for this problem? What are the pros and cons of hashes?
#               # Yes there are two ways I can think of. The first is to make it an array and call the shifted value 4 from the original.
#               # Another way is to use a loop and the "next" or "succ" enumerator to call the next letter. "d".next => "e". We'd do this 4 times
#             "g" => "c",
#             "h" => "d",
#             "i" => "e",
#             "j" => "f",
#             "k" => "g",
#             "l" => "h",
#             "m" => "i",
#             "n" => "j",
#             "o" => "k",
#             "p" => "l",
#             "q" => "m",
#             "r" => "n",
#             "s" => "o",
#             "t" => "p",
#             "u" => "q",
#             "v" => "r",
#             "w" => "s",
#             "x" => "t",
#             "y" => "u",
#             "z" => "v",
#             "a" => "w",
#             "b" => "x",
#             "c" => "y",
#             "d" => "z"}

#   input.each do |x| # What is #each doing here?
#       # Each is an enumerator that will go through every element of the new input array
#     found_match = false  # Why would this be assigned to false from the outset? What happens when it's true?
#       # This found_match is a boolean to keep track of if the value is matched, if not changed to "true" it will return an x in the
#       # solution
#     cipher.each_key do |y| # What is #each_key doing here?
#         # This iterates through each key of the hash to match the values in the input array.
#       if x == y  # What is this comparing? Where is it getting x? Where is it getting y? What are those variables really?
#           # This is comparing the x from the parent loop which is the array of the message we are trying to translate. Y is the keys
#           # of the cipher. It is trying to seeing if value of the array matches the cipher.
#         decoded_sentence << cipher[y]
#         found_match = true
#         break  # Why is it breaking here?
#           # Since a match is found it can ecape the cipher.each_key loop and progress to the next element in the input array
#       elsif x == "@" || x == "#" || x == "$" || x == "%"|| x == "^" || x == "&"|| x =="*" #What the heck is this doing?
#           # This checks to see if the value is any of these punctuations and if true returns an empty space to the array
#         decoded_sentence << " "
#         found_match = true
#         break
#       elsif (0..9).to_a.include?(x) # Try this out in IRB. What does   " (0..9).to_a "    do?
#           # This produces an array that is 0 to 9
#         decoded_sentence << x
#         found_match = true
#         break
#       end
#     end
#     if not found_match  # What is this looking for?
#         # This is for if a match isn't found then it will put an "x" into the returned array.
#       decoded_sentence << x
#     end
#   end
#   decoded_sentence = decoded_sentence.join("")
#   #What is this method returning?
#     # This is returning the newly decoded version into a string with no spaces.
# end

# Your Refactored Solution

    # We're using ord to get the codepoint. "a" == 97. "z".122. Anything below is a space and anything above is subtracted 26.
    # a = 97 which becomes "w" = 119
def dr_evils_cipher(coded_message)
  shift = 4
  coded_array = coded_message.downcase.split("").map(&:ord)

  coded_array.map! do |x|
    if x >= 97 && x < 97 + shift
      x += 26 - shift
    elsif x >= 97 + shift && x < 122
      x -= shift
    elsif x == 64 || x == 35 || x == 36 || x == 37 || x == 38 || x == 42 || x == 94
      x = " "
    else
      x
    end    
  end

  coded_array.map(&:chr).join("")
end


# Driver Test Code:
p dr_evils_cipher("m^aerx%e&gsoi! abcdefghijklmnopqrstuvwxyz")
p dr_evils_cipher("m^aerx%e&gsoi!") == "i want a coke!" #This is driver test code and should print true
# Find out what Dr. Evil is saying below and turn it into driver test code as well. Driver test code statements should always return "true."
p dr_evils_cipher("syv%ievpc#exxiqtxw&ex^e$xvegxsv#fieq#airx%xlvsykl$wizivep#tvitevexmsrw.#tvitevexmsrw#e*xlvsykl#k&aivi%e@gsqtpixi&jempyvi.
&fyx%rsa,$pehmiw@erh#kirxpiqir,%ai%jmreppc@lezi&e&asvomrk%xvegxsv#fieq,^almgl^ai^wlepp%gepp@tvitevexmsr^l")
p dr_evils_cipher("csy&wii,@m'zi@xyvrih$xli*qssr$mrxs&alex@m#pmoi%xs#gepp%e^hiexl#wxev.")
p dr_evils_cipher("qmrm#qi,*mj^m#iziv^pswx#csy#m^hsr'x%orsa^alex@m%asyph^hs.
@m'h%tvsfefpc%qszi$sr%erh*kix#ersxliv$gpsri@fyx*xlivi@asyph^fi@e^15&qmryxi@tivmsh%xlivi$alivi*m*asyph&nywx^fi$mrgsrwspefpi.")
p dr_evils_cipher("alc@qeoi*e$xvmppmsr^alir#ai*gsyph%qeoi...#fmppmsrw?")

# Reflection
# Keep your reflection limited to 10-15 minutes!