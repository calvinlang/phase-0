// Eloquent JavaScript

// Run this file in your terminal using `node my_solution.js`. Make sure it works before moving on!

// Program Structure
// Write your own variable and do something to it.

//var name = "Calvin"
//console.log( "Hi " + name + "!" )

//food = prompt("What is your favorite food?", "Food")
//console.log( food + " is my favorite food too!" )

// Complete one of the exercises: Looping a Triangle, FizzBuzz, or Chess Board

// FizzBuzz

//for ( x = 0 ; x <= 100 ; x++ )
//	if ( x % 3 == 0 && x % 5 == 0 )
//		console.log( "FizzBuzz" );
//	else if ( x % 5 == 0 )
//		console.log( "Buzz" );
//	else if ( x % 5 == 0 )
//		console.log( "FizzBuzz" );
//	else
//		console.log( x );
//		

// Functions



// Complete the `minimum` exercise.
//The previous chapter introduced the standard function Math.min that returns its smallest argument. We can do that ourselves now. Write a function min that takes two arguments and returns their minimum.

function min( num1, num2 ) {
	if ( num1 < num2 )
		return num1;
	else 		
		return num2;
}

console.log(min(0, 10));
console.log(min(0, -10));

// Data Structures: Objects and Arrays
// Create an object called "me" that stores your name, age, 3 favorite foods, and a quirk below.

var info = {
	name: "Calvin",
	age: 29,
	food: [ "curry" , "steak" , "pizza"],
	quirk: "I have to write my name on everything!"
}