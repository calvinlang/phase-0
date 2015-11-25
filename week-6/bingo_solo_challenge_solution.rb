# A Nested Array to Model a Bingo Board SOLO CHALLENGE

# I spent [#] hours on this challenge.


# Release 0: Pseudocode
# Outline:

# Create a method to generate a letter ( b, i, n, g, o) and a number (1-100)
#   create an array of b i n g o
#   iterate a method called CALL that selects a random bingo and a random integer

# Check the called column for the number called.
#   In method called CHECK
#   if roll is bingo it matches that column array position board(bingo)

# If the number is in the column, replace with an 'x'
#   if CHECK is in that array, it is now "X" on the board
#   puts board

# Display a column to the console
#   Not sure if I need this

# Display the board to the console (prettily)
#   Write out BINGO and put out the array line by line

# Initial Solution

# class BingoBoard
#   attr_reader :bingo_board
#   attr_reader :last_call
#   # attr_reader :bingo

#   def initialize(board)
#     @bingo_board = board
#     @bingo = ["B","I","N","G","O"]
#   end

#   def call
#     @last_call = @bingo[rand(@bingo.length).to_i].to_s + " " + (1 + rand(100)).to_s
#     @last_num = @last_call.split(" ")[1].to_i
#     @last_letter = last_call.split(" ")[0]
#     @column = @bingo.index(@last_letter)
#     p "The last call was: #{last_call}"
#   end 

#   def check
#     counter = 0
#     while counter < 5
#       if bingo_board[counter][@column] == @last_num
#         puts "HIT!"
#         bingo_board[counter][@column] = "X"
#         return display_board
#       end
#       counter += 1
#     end
#     puts
#     puts "No hit this round"
#   end

#   def display_board
#     puts
#     p "B   I   N   G   O"
#     p bingo_board[0]
#     p bingo_board[1]
#     p bingo_board[2]
#     p bingo_board[3]
#     p bingo_board[4]
#   end

#   def create_new_board
#     @bingo_board = [[],[],[],[],[]]
#     nest = 0
#     while nest < 5
#       position = 0
#       multiplier = 0
#       while position < 5
#         @bingo_board[nest].push((1 + rand(15))+(15 * multiplier.to_i))
#         puts (1 + rand(15))*(multiplier.to_i)
#         multiplier += 1
#         position += 1
#       end
#       nest += 1     
#     end
#     display_board
#   end
# end

# Refactored Solution
class BingoBoard
  attr_reader :bingo_board
  attr_reader :last_call

  def initialize(board)
    @bingo_board = board
    @bingo = ["B","I","N","G","O"]
  end

  def call
    @last_num = 1 + rand(100)
    @last_letter = @bingo[rand(@bingo.length)]
    @last_call = @last_letter.to_s + @last_num.to_s
    @column = @bingo.index(@last_letter)
    puts
    p "The last call was: #{last_call}"
  end 

  def check
    counter = 0
    while counter < 5
      if bingo_board[counter][@column] == @last_num
        puts "HIT!"
        bingo_board[counter][@column] = "X"
        return display_board
      end
      counter += 1
    end

# Went another round at using map but it would locate the number, but it wouldn't check if the letters matched and
# it would delete every number before.
    # bingo_board.map! do |x|
    #   x.map! do |y|
    #     if y == @last_num.to_i
    #       y = "X"
    #       puts "HIT!"
    #       return display_board
    #     end
    #   end
    # end
    puts "No hit this round"
  end

  def display_board
    puts
    p "B   I   N   G   O"
    p bingo_board[0]
    p bingo_board[1]
    p bingo_board[2]
    p bingo_board[3]
    p bingo_board[4]
  end

  def create_new_board
    @bingo_board = [[],[],[],[],[]]
    nest = 0
    while nest < 5
      position = 0
      while position < 5
        @bingo_board[nest].push((1 + rand(15))+(15 * position.to_i))
        position += 1
      end
      nest += 1     
    end
    display_board
  end
end


#DRIVER CODE (I.E. METHOD CALLS) GO BELOW THIS LINE
board = [[47, 44, 71, 8, 88],
        [22, 69, 75, 65, 73],
        [83, 85, 97, 89, 57],
        [25, 31, 96, 68, 51],
        [75, 70, 54, 80, 83]]

new_game = BingoBoard.new(board)
new_game.bingo_board
new_game.call
new_game.check
new_game.call
new_game.check
new_game.display_board
new_game.create_new_board




#Reflection
# How difficult was pseudocoding this challenge? What do you think of your pseudocoding style?
#   It was fine until the first big obstacle which was that I totally misunderstood that a bingo board has the
#   letters in columns. I thought that I could just use B = array[0][] and I = array [1][]. NOPE! It made the experience
#   much more troubling than I expected. So I tried mapping and each loops or iterators but the problem was they
#   were not as good for find a specific location on an array, and what was pushed to it had to be location specific.
#   So I used a while loop in the end. I spent hours on this part. But it works now!
#   Actually if you use a legal BINGO pad the coding gets easier because you know where all the 1-15 values are and you don't
#   have to check if the numbers AND the BINGO match.
# What are the benefits of using a class for this challenge?
#   It made it so much easier to pass values around with a class. For example in my check method I need to call the most
#   recent bingo call like "I27." Sometimes I just wanted I, 27, or I's array value. Usually I would have to make them into
#   their own methods to return a single value or do some enumeration in another method. But by using classes I could pass
#   around variables easily.
# How can you access coordinates in a nested array?
#   Nested values can be accessed by syntax in their array position, and if in another array, that array's position. To 
#   access these you use the syntax array[][]. In the case of this BINGO game I used while loops with the counter to be
#   the coordiate positions. For creating a new board I used a while loop within a while loop.
# What methods did you use to access and modify the array?
#   I used a while loop with a counter. The counter would be the position in the array to access and modify an array. The
#   column was based on the position of B-I-N-G-O in the array. For making a new legal BINGO array I used a while loop within
#   a while loop. 
# Give an example of a new method you learned while reviewing the Ruby docs. Based on what you see in the docs, what purpose does it serve, and how is it called?
#   I didn't reference the rubydoc until I was refactoring but I couldn't find methods specifically for changing only one value
#   in an array. I used a while loop within a while loop which was interesting.
# How did you determine what should be an instance variable versus a local variable?
#   I am still quite hazy on this. I'm still playing with it where I am removing the @ sign on some of the instances I created and
#   sometimes it still works, sometimes it doesn't. I'm using the rule that if the value has to be called in another method, I'll make
#   it an instance. But for example, @last_num in the call method without the @ works just fine.
# What do you feel is most improved in your refactored solution?
#   I couldn't make many changes in my refactored solution. Map wasn't working with any of my attempts. Also I had trouble finding
#   ways to iterate through an array and only change a single value to something.

