
// Separate Numbers with Commas in JavaScript **Pairing Challenge**


// I worked on this challenge with: Tom McHenry.

// Pseudocode
// Input: A big number
// Output: A big number with commas in the correct position
// Reverse the number.
// Take the number and break it into an array.
// Create a blank array
// WHILE there are numbers in the array 
// Push the numbers from the first array to the blank array
// If the position is modulo 3 equals zero, push a comma
// Reverse the second array
// Flatten the array 
// Return the array


// FOR every third vale

// for (i=0; i<number_as_array.length-1; i++)


// Initial Solution

//function separateComma(number){
//  var digits = number.toString().split('').reverse();
//  var digits_copy = [];
//  for (x = 0; x < digits.length; x++){
//		if (x % 3 == 0 && x > 0 ) {
//			digits_copy.push(",")
//			digits_copy.push(digits[x]);
//		}
//		else {
//			digits_copy.push(digits[x]);		}
//  }
//	return digits_copy.reverse().join("")
//}

// Refactored Solution

function separateComma(number){
  var digits = number.toString().split('').reverse();
  var digits_copy = [];

  for (x = 0; x < digits.length; x++) {
		if (x % 3 == 0 && x > 0 ) {
			digits_copy.push(",")
		}
		digits_copy.push(digits[x]);
  }
	return digits_copy.reverse().join("")
}


// Your Own Tests (OPTIONAL)
separateComma(1569743)
separateComma(1000)
separateComma(100000)
separateComma(1000000)
separateComma(10000000)
separateComma(10000000)


// Reflection

// What was it like to approach the problem from the perspective of JavaScript? Did you approach the problem differently?
// 	Not really. Really the underlying principles of Ruby and JS are incredibly similar. The aspect of arrays,
// 	looping, splitting and joining were essentially the same. The biggest difference was the for loop syntax. 
// 	In the end we probably would have done the same thing as we did in Ruby.
// What did you learn about iterating over arrays in JavaScript?
// 	It is essentially the same as in Ruby, except for the syntax of a for loop which is a nice feature. Arrays
// 	still have the same underlying concepts like the first position is 0 and iterating goes upwards. Actually
// 	a lot of the iterations were almost exactly the same.
// What was different about solving this problem in JavaScript?
// 	Not much, it ended up being pretty straightforward and we basically talked about how we would do it in Ruby
// 	and it was pretty much the same. We had a weird problem in coderpad when it was set to JS the for loop would
// 	not work but fortunately it was fine in our computers.
// What built-in methods did you find to incorporate in your refactored solution?
// 	We used a few methods that work also in Ruby such as split and reverse. To convert to a string we use used
// 	.toString() instead of .to_s


