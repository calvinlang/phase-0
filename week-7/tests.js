// Add the finished solution here when you receive it.

// As a user, I want to pass the sum method an array and have it return the sum of all of the elements.
function sum(numbers) {
  var sum = 0;
  for(var index = 0; index < numbers.length; index++){
    sum += numbers[index];
  }
  return sum;
}

// As a user, I want to pass the mean method an array and have it return the mean of all of the elements
function mean(numbers) {
  return sum(numbers)/numbers.length;
}

// As a user, I want to pass the median method an array and have it return the median of all of the elements
var median = function(numbers) {
  var medIndex = Math.floor(numbers.length / 2);
  var sorted = numbers.sort();
  if(numbers.length % 2 == 0) {
    return (sorted[medIndex] + sorted[medIndex - 1]) / 2
  } else {
    return sorted[medIndex]
  }
}

console.log(sum([1,2,3,4,5])) // Should return 15
console.log(mean([1,2,3,4,5])) // Should return 3
console.log(median([4,2,3,1,5,6])) // Should return 3.5
console.log(median([3,4,1,2,5,6,7])) // Should return 4


// __________________________________________
// Tests:  Do not alter code below this line.


oddLengthArray  = [1, 2, 3, 4, 5, 5, 7]
evenLengthArray = [4, 4, 5, 5, 6, 6, 6, 7]


function assert(test, message, test_number) {
  if (!test) {
    console.log(test_number + "false");
    throw "ERROR: " + message;
  }
  console.log(test_number + "true");
  return true;
}

// tests for sum
assert(
  (sum instanceof Function),
  "sum should be a Function.",
  "1. "
)

assert(
  sum(oddLengthArray) === 27,
  "sum should return the sum of all elements in an array with an odd length.",
  "2. "
)

assert(
  sum(evenLengthArray) === 43,
  "sum should return the sum of all elements in an array with an even length.",
  "3. "
)

// tests for mean
assert(
  (mean instanceof Function),
  "mean should be a Function.",
  "4. "
)

assert(
  mean(oddLengthArray) === 3.857142857142857,
  "mean should return the average of all elements in an array with an odd length.",
  "5. "
)

assert(
  mean(evenLengthArray) === 5.375,
  "mean should return the average of all elements in an array with an even length.",
  "6. "
)

// tests for median
assert(
  (median instanceof Function),
  "median should be a Function.",
  "7. "
)

assert(
  median(oddLengthArray) === 4,
  "median should return the median value of all elements in an array with an odd length.",
  "8. "
)

assert(
  median(evenLengthArray) === 5.5,
  "median should return the median value of all elements in an array with an even length.",
  "9. "
)