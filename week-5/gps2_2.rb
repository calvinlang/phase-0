# This pad is reserved for a student in the Chorus Frogs cohort. 


# Method to create a list
# input: string of items separated by spaces (example: "carrots apples cereal pizza")
# steps: 
  # Split into an array by space
  # Create hash from array
  # set default quantity
  # print the list to the console [can you use one of your other methods here?]
# output:  Hash

# Method to add an item to a list
# input: item name and optional quantity as arguments in method
# steps: add item and quantity to hash
# print list to console
# output: Hash
# def additem(quantity, itemname)

# Method to remove an item from the list
# input: item name and quantity as argument
# steps: remove the item
# output: hash

# Method to update the quantity of an item
# input: item name and quantity as arguments
# steps: change the value of the key
# output: hash

# Method to print a list and make it look pretty
# input: the hash
# steps: puts hash
# output: Hash

def print_list(list)
  puts "Your Grocery List -"
  list.each do |item, quantity|  
    puts "#{item} : #{quantity}" 
  end
end

def new_list(item_list)
  list = {}
  item_list_array = item_list.split(" ")
  item_list_array.each {|x| list[x] = 1 }
  list
end

def add_item(list, itemname, quantity)
  list[itemname] = quantity
end

def remove_item(list, itemname)
  list.delete(itemname)
end

def update_item(list, itemname, quantity)
  if list.include?(itemname)
    list[itemname] = quantity
  else
    puts "Item doesn't exist"
  end
end

grocery_list = new_list("Bananas Apple Beef")

add_item(grocery_list, "Milk", 2)

update_item(grocery_list, "Water", 2)

remove_item(grocery_list, "Bananas")

print_list(grocery_list)

# What did you learn about pseudocode from working on this challenge?
#   Pseudocode is great for getting on the same page as your peer. It was a tough challenge for us and while the pseudocode
#   ended up being thrown out the window becuase we didn't fully understand passing information to another, our guide got us
#   through safely!
# What are the tradeoffs of using Arrays and Hashes for this challenge?
#   Arrays and hashes can be used to iterate through and store information in a more parseable and accessible form than as
#   strings in variables.
# What does a method return?
#   A method can return anything. But it can return anything that takes in an argument and can modify it by its block to anything
#   like an array or a hash.
# What kind of things can you pass into methods as arguments?
#   Almost any object can be passed into methods as arguments. In our example we could take strings and a number to return
#   an array or a change in an array.
# How can you pass information between methods?
#   There are several ways. You can even put methods in as arguments to arrays. But we used a method to alter variables and arrays
#   and had them called as parameters in other methods. 
# What concepts were solidified in this challenge, and what concepts are still confusing?
#   That we can have several methods that all have different functions to create a full product. This idea was called "Flow control"
#   in our readings and produced a methodology of having several methods to create an full set of tasks.
