- What does puts do?
	- Puts puts text to screen to OUTPUT a value on a new line. It's important to make a distinction between this and "return" because return doesn't put text to screen unless asked to.
- What is an integer? What is a float?
	- An integer is a number without a decimal point and takes values as whole numbers. Arithmetic with integers also presents integers, so 9/4 = 2. Float are numbers with decimals, this includes 9.0. Most work is done with integers unless calculations are involved.
- What is the difference between float and integer division? How would you explain the difference to someone who doesn't know anything about programming?
	- Floats are integers, so no decimals are represented. This is because in our functions on computers as well as life, we use a lot of numbers, but not necessarily a lot of calculations. We don't have 4.5 bedroom homes (we'll maybe, kind of) and we don't have 5.7 lightbulbs. When we do have calulations we use floats. This is to show we have 3.5 cups of flour or your sales tax for a sandwich is $0.87. 

Mini-challenge 1

Hours in a year:
```ruby
puts 365*24
```
Mini-challenge 2

Hours in a decade:
```ruby
puts ((365*8)+(366*2))*24*60
```

- How does Ruby handle addition, subtraction, multiplication, and division of numbers?
	- Ruby uses the usual operators and handles these as integer and floats. Using the syntax of normal operators one can complete the normal mathematical actions. 
- What is the difference between integers and floats?
	- Integers don't have a decimal and are calculated as whole numbers. Floats include decimals and function more for actualy mathematical calculations.
- What is the difference between integer and float division?
	- Good question! Since integers only deal with whole numbers, it will only return whole numbers. So we can consider that dividing integers will only give the value of how many WHOLE times the nominator fits in the denominator. For floats we will get the actual calculation like you would get in a calculator.
- What are strings? Why and when would you use them?
	- Strings are groups of letters and words, or even numbers, but they represent a set of information. These are used all the time to store and process to generate outcomes with our code. 
- What are local variables? Why and when would you use them?
	- Local variables are variables that can receive arguments. For us probably the most common will be the def scope that we can use to make methods that can take an argument and perform actions and return data.
- How was this challenge? Did you get a good review of some of the basics?
	- It was pretty easy and it was good to see how quickly this comes back to you. It was a good review but I'm not totally sure of what the RSPEC was and I'm going to watch the suggested video to make sense of it.

Challenge solutions:

- [4.2.1 Defining Variables](defining-variables.rb)
- [4.2.2 Simple String Methods](simple-string.rb)
- [4.2.3 Local Variables and Basic Arithmetical Operations](basic-math.rb)

