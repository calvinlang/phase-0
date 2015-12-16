// # Class Warfare, Validate a Credit Card Number

// # Example given 4563 9601 2200 1999
// # Origin: 4   5   6   3   9   6   0   1   2   2   0   0   1   9   9   9
// # Step 1: 8   5  12   3  18   6   0   1   4   2   0   0   2   9  18   9
// # Step 2: 8 + 5 + 1 + 2 + 3 + 1 + 8 + 6 + 0 + 1 + 4 + 2 + 0 + 0 +2+ 9 + 1 + 8 + 9
// # Step 3: 70 (total above) % 10 == 0
// # Step 4: Profit

// # array [4,5,6,3,9,6,0,1,2,2]

// # I worked on this challenge [by myself, with: ].
// # I spent [#] hours on this challenge.

// # Pseudocode

// # Input: Credit card number (16-digits) with spaces which means it can be a string
// # Output: Boolean (True/False)
// # Steps:
// 1. Iterate a function that takes a number as a string
// 2. Convert to string (in case it's a number) and then into array, and remove any empty spaces. Convert each element to an integer
// 3. Raise argument error if array length is not equal to 16
// 4. Write a loop to iterate each part of the array
// 	5. If the array position is even, multiply it by two
// 	6. If the element value is greater than 10, subtract 9
// 7. Sum up all the elements, and divide by 10. 
// 8. If remainder = 0, then return true


// var cardNumber = "4563 9671 2205 1999"

// function approveCard(number) {
// 	var cardSplit = number.toString().split("")
// 	var cleanNumber = [];
// 	for (var i = 0; i < cardSplit.length; i++) {
// 		if (cardSplit[i] != " ") {
// 			cleanNumber.push(parseInt(cardSplit[i]));
// 		};
// 	};

// 	if (cleanNumber.length != 16) {
// 		return "Wrong number of digits entered."
// 	};
//     // cleanNumber is now an array of integers that will work no matter what format the card was originally

// 	for (var i = 0; i < cleanNumber.length; i++) {
// 		if (i % 2 == 0) {
// 			cleanNumber[i] *= 2
// 			if (cleanNumber[i] > 9) {
// 				// All numbers 10-19 with their individual integers added is the same as subtracting 9.
// 				cleanNumber[i] -= 9
// 			};
// 		};
// 	};
// 	var sum = 0;

// 	// Can this be refactored later to be part of the second loop?
// 	for (var i = 0; i < cleanNumber.length; i++) {
// 		sum += cleanNumber[i];
// 	};

// 	if (sum % 10 == 0) {
// 		return true;
// 	} else {
// 		return false;
// 	};

// }

// console.log( approveCard(cardNumber) )

// Refactored Solution

var cardNumber = "4 5 6 3 9 6 7 1 2 2 0 5 1 9 9 9"

function approveCard(number) {
	var cardSplit = number.toString().split("")
	var cleanNumber = [];
	for (var i = 0; i < cardSplit.length; i++) {
		if (cardSplit[i] != " ") {
			cleanNumber.push(parseInt(cardSplit[i]));
		};
	};

	// Check to see if the length is 16 digits
	if (cleanNumber.length != 16) {
		return "Wrong number of digits entered."
	};

    // cleanNumber is now an array of integers that will work no matter what format the card was originally
    var sum = 0;
	for (var i = 0; i < cleanNumber.length; i++) {
		if (i % 2 == 0) {
			cleanNumber[i] *= 2
				cleanNumber[i] > 9 ? cleanNumber[i] -= 9 : cleanNumber[i]
				// All numbers 10-19 with their individual integers added is the same as subtracting 9.
		};
		sum += cleanNumber[i]
	};

	return sum % 10 == 0 ? true : false
}

console.log( approveCard(cardNumber) )
console.log( approveCard("8 7 777 7 6 6 8 823 21") )

// Reflection

// What concepts did you solidify in working on this challenge? 
// 	I actually learned a lot more about Ruby by working this challenge. I didn't realize
// 	just how much the enumberables became part of my programming vocabulary. 
// What was the most difficult part of this challenge?
// 	Not passing around values. I put everything into one function although ideally I would
// 	have liked to do so. The assignment didn't feel quite large enough to develop a 
// 	constructor. 
// 	Other than that, converting every element in an array to an integer was difficult because
// 	I had to google it to see if there was a non-loop method. 
// Did you solve the problem in a new way this time?
// 	Not really. If anything, everything was pretty much just a javascript way of doing it
// 	as in I used a lot of for loops. 
// Was your pseudocode different from the Ruby version? What was the same and what was different?
// 	Very much the same, the only difference was the use of for loops and what to include in them.
// 	The biggest difference for me is that the code just doesn't look as clean as if it were Ruby.

