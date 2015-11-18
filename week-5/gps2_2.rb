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
