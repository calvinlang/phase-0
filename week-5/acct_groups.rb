students_array = [
"Jack Abernethy",
"Mohammad Amin",
"Zollie Barnes",
"Reuben Brandt",
"Dana Breen",
"Breton Burnett",
"Saundra Vanessa Castaneda",
"Luis De Castro",
"Nicolette Chambers",
"Kerry Choy",
"Nick Davies",
"Max Davis",
"Katherine DiAngelo",
"Adrian Diaz",
"David Diaz",
"Bob Dorff",
"Michael Du",
"Paul Dynowski",
"Jenna Espezua",
"Sean Fleming",
"Jennifer Gilbert",
"Marcel Haesok",
"Albert Hahn",
"Arthur Head",
"Jonathan Huang",
"Thomas Huang",
"Alex Jamar",
"Kevin Jones",
"Steven Jones",
"Coleby Kent",
"Caroline Kenworthy",
"Calvin Lang",
"Yi Lu",
"David Ma",
"Charlotte Manetta pending",
"Charlotte Manetta",
"Sean Massih",
"Tom McHenry",
"Alex Mitzman",
"Lydia Nash",
"Brenda Nguyen",
"Matthew Oppenheimer",
"Mason Pierce",
"Joe Plonsker",
"Mira Scarvalone",
"Joseph Scott",
"Chris Shahin",
"Benjamin Shpringer",
"Lindsey Stevenson",
"Philip Thomas",
"Gary Tso",
"Ting Wang",
"Monique Williamson",
"Regina Wong",
"Hanah Yendler" ]

students_hash = {
"Jack Abernethy" => 0,
"Mohammad Amin" => 0,
"Zollie Barnes" => 0,
"Reuben Brandt" => 0,
"Dana Breen" => 0,
"Breton Burnett" => 0,
"Saundra Vanessa Castaneda" => 0,
"Luis De Castro" => 0,
"Nicolette Chambers" => 0,
"Kerry Choy" => 0,
"Nick Davies" => 0,
"Max Davis" => 0,
"Katherine DiAngelo" => 0,
"Adrian Diaz" => 0,
"David Diaz" => 0,
"Bob Dorff" => 0,
"Michael Du" => 0,
"Paul Dynowski" => 0,
"Jenna Espezua" => 0,
"Sean Fleming" => 0,
"Jennifer Gilbert" => 0,
"Marcel Haesok" => 0,
"Albert Hahn" => 0,
"Arthur Head" => 0,
"Jonathan Huang" => 0,
"Thomas Huang" => 0,
"Alex Jamar" => 0,
"Kevin Jones" => 0,
"Steven Jones" => 0,
"Coleby Kent" => 0,
"Caroline Kenworthy" => 0,
"Calvin Lang" => 0,
"Yi Lu" => 0,
"David Ma" => 0,
"Charlotte Manetta pending" => 0,
"Charlotte Manetta" => 0,
"Sean Massih" => 0,
"Tom McHenry" => 0,
"Alex Mitzman" => 0,
"Lydia Nash" => 0,
"Brenda Nguyen" => 0,
"Matthew Oppenheimer" => 0,
"Mason Pierce" => 0,
"Joe Plonsker" => 0,
"Mira Scarvalone" => 0,
"Joseph Scott" => 0,
"Chris Shahin" => 0,
"Benjamin Shpringer" => 0,
"Lindsey Stevenson" => 0,
"Philip Thomas" => 0,
"Gary Tso" => 0,
"Ting Wang" => 0,
"Monique Williamson" => 0,
"Regina Wong" => 0,
"Hanah Yendler" => 0,}

# Pseudocode
# Take the number of keys in a hashe and divide by 5 = groups
# Random integer between 1 to groups for each key/student

def number_of_groups(list_of_students)
	if list_of_students.length % 5 == 0
		number_of_groups = (list_of_students.length / 5) 
	else
		number_of_groups = (list_of_students.length / 5) + 1
	end
end

def accountability_group_sorter(list_of_students)
	student_grouping = {}
	list_of_students.each do | student , group_number |
		group_number = 1 + rand(number_of_groups(list_of_students))
		student_grouping[student] = group_number
	end
	x = 1
	while x <= number_of_groups(list_of_students)
		puts ""
		puts "Group #{x}:"
		student_grouping.each {|student,group| puts student if group == x }
		x += 1
	end	
end

# What was the most interesting and most difficult part of this challenge?
# 	The most interesting part of this challenge was that I didn't want to stop adding to the complexity.
# 	I already spent about 2.5 hours on it and I thought it best to move on. The problem was that I had it working
# 	but I wanted to change how the information was held. I didn't want a big hash of every name with the group number.
# 	I wanted the information presented as Group 1: name, name, name. So my first thought was to make an array with
# 	each group as a position and the names as part of a sub array. This turned out to be a dead end. Then I tried using
# 	a method to convert my hash to another hash with the groups as keys and a list of names as the value. But then 
# 	it just ended up with the final name put in as the key. FRUSTRATION. So finally I ended it with an each loop
# 	within a while loop that just puts the names if they're in each group. Success!
# Do you feel you are improving in your ability to write pseudocode and break the problem down?
# 	Well the first part of simply giving each person a group assignment was easier, even if there were issues. 
# 	I tried to pseudocode the rest of it but I just ended up having methods that didn't work.
# Was your approach for automating this task a good solution? What could have made it even better?
# 	Since I am using random integers, there is a higher chance of every group not having 5 than having 5. 
# 	I couldn't figure out how to make it so that it would limit each group to a certain number of people.
# 	I was considering a loop that would repeat the process ad infinitum until it was randomly placed with a
# 	correct number of groups for each. It would be a lot easier if I knew how to automate the creation of variables.
# What data structure did you decide to store the accountability groups in and why?
# 	I decided to store it as a hash with the student name as the key and the group number as the value. After this
# 	I attempted to make it into an array or subarrays but this ended up not working. However, I did manage to make the
# 	hash present as Group 1: then the names below. I originally wanted it to be as Group: name, name, name on a single
# 	line but I couldn't manage that and moved on.
# What did you learn in the process of refactoring your initial solution? Did you learn any new Ruby methods?
# 	I have a lot of trouble with refactoring. I think I don't know how to research this properly and I made some
# 	changes to make the work cleaner.
