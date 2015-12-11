
// Tally Votes in JavaScript Pairing Challenge.

// I worked on this challenge with: Tom McHenry
// This challenge took me [2.5] hours.

// These are the votes cast by each student. Do not alter these objects here.
var votes = {
  "Alex": { president: "Bob", vicePresident: "Devin", secretary: "Gail", treasurer: "Kerry" },
  "Bob": { president: "Mary", vicePresident: "Hermann", secretary: "Fred", treasurer: "Ivy" },
  "Cindy": { president: "Cindy", vicePresident: "Hermann", secretary: "Bob", treasurer: "Bob" },
  "Devin": { president: "Louise", vicePresident: "John", secretary: "Bob", treasurer: "Fred" },
  "Ernest": { president: "Fred", vicePresident: "Hermann", secretary: "Fred", treasurer: "Ivy" },
  "Fred": { president: "Louise", vicePresident: "Alex", secretary: "Ivy", treasurer: "Ivy" },
  "Gail": { president: "Fred", vicePresident: "Alex", secretary: "Ivy", treasurer: "Bob" },
  "Hermann": { president: "Ivy", vicePresident: "Kerry", secretary: "Fred", treasurer: "Ivy" },
  "Ivy": { president: "Louise", vicePresident: "Hermann", secretary: "Fred", treasurer: "Gail" },
  "John": { president: "Louise", vicePresident: "Hermann", secretary: "Fred", treasurer: "Kerry" },
  "Kerry": { president: "Fred", vicePresident: "Mary", secretary: "Fred", treasurer: "Ivy" },
  "Louise": { president: "Nate", vicePresident: "Alex", secretary: "Mary", treasurer: "Ivy" },
  "Mary": { president: "Louise", vicePresident: "Oscar", secretary: "Nate", treasurer: "Ivy" },
  "Nate": { president: "Oscar", vicePresident: "Hermann", secretary: "Fred", treasurer: "Tracy" },
  "Oscar": { president: "Paulina", vicePresident: "Nate", secretary: "Fred", treasurer: "Ivy" },
  "Paulina": { president: "Louise", vicePresident: "Bob", secretary: "Devin", treasurer: "Ivy" },
  "Quintin": { president: "Fred", vicePresident: "Hermann", secretary: "Fred", treasurer: "Bob" },
  "Romanda": { president: "Louise", vicePresident: "Steve", secretary: "Fred", treasurer: "Ivy" },
  "Steve": { president: "Tracy", vicePresident: "Kerry", secretary: "Oscar", treasurer: "Xavier" },
  "Tracy": { president: "Louise", vicePresident: "Hermann", secretary: "Fred", treasurer: "Ivy" },
  "Ullyses": { president: "Louise", vicePresident: "Hermann", secretary: "Ivy", treasurer: "Bob" },
  "Valorie": { president: "Wesley", vicePresident: "Bob", secretary: "Alex", treasurer: "Ivy" },
  "Wesley": { president: "Bob", vicePresident: "Yvonne", secretary: "Valorie", treasurer: "Ivy" },
  "Xavier": { president: "Steve", vicePresident: "Hermann", secretary: "Fred", treasurer: "Ivy" },
  "Yvonne": { president: "Bob", vicePresident: "Zane", secretary: "Fred", treasurer: "Hermann" },
  "Zane": { president: "Louise", vicePresident: "Hermann", secretary: "Fred", treasurer: "Mary" }
}

// Tally the votes in voteCount.
var voteCount = {
  president: {},
  vicePresident: {},
  secretary: {},
  treasurer: {}
}

/* The name of each student receiving a vote for an office should become a property
of the respective office in voteCount.  After Alex's votes have been tallied,
voteCount would be ...

  var voteCount = {
    president: { Bob: 1 },
    vicePresident: { Devin: 1 },
    secretary: { Gail: 1 },
    treasurer: { Kerry: 1 }
  }

*/


/* Once the votes have been tallied, assign each officer position the name of the
student who received the most votes. */
var officers = {
  president: undefined,
  vicePresident: undefined,
  secretary: undefined,
  treasurer: undefined
}

// Pseudocode
// FOR loop through votes
//   FOR loop through each officer role
//     IF that person exists in the voteCount object
//       Add 1 to that person's property
//     ELSE add that person as a new property with a value of 1
// Sort the votecounts object by the value
// Assign the first property in each of the officer properties to the officers object under the correct value

// __________________________________________
// Initial Solution


// function voteCall(){
//   for (var vote in votes){
//     for (var people in votes[vote]){
//       if ( voteCount[people].hasOwnProperty(votes[vote][people]) ) {
//         var newPerson = votes[vote][people];
//         voteCount[people][newPerson] += 1;
//       } else {
//         var newPerson = votes[vote][people];
//         voteCount[people][newPerson] = 1;
//       }      
//     }      
//   }
//   for (var position in voteCount) {
//     var votesCounted = Object.keys(voteCount[position]).sort(function(a,b){return voteCount[position][b]-voteCount[position][a]});
//     officers[position] = votesCounted[0]; 
//   }
// }

// voteCall();

// __________________________________________
// Refactored Solution

function voteCall(){
  for (var vote in votes){
    for (var people in votes[vote]){
      if ( voteCount[people].hasOwnProperty(votes[vote][people]) ) {
        voteCount[people][votes[vote][people]] += 1;
      } else {
        voteCount[people][votes[vote][people]] = 1;
      }      
    }      
  }
  for (var position in voteCount) {
    var votesCounted = Object.keys(voteCount[position]).sort(function(a,b){return voteCount[position][b]-voteCount[position][a]});
    officers[position] = votesCounted[0]; 
  }
}

voteCall();



// __________________________________________
// Reflection

// What did you learn about iterating over nested objects in JavaScript?
//   - I learned that organization is incredibly important and involves a thorough understanding of
//   the syntax because things get incredibly elaborate. When iterating there is a difference between
//   using [i] and i and it's good to label them to stay organized. The i without the brackets will 
//   call the property instead of the value and you have to really step back and write down which is
//   which sometimes for each loop.
// Were you able to find useful methods to help you with this?
//   - Yes the hasOwnProperty() which is similar to the .contains in Ruby. We used this to determine if
//   the votes were already logged in the voteCount object and if it was then it would add 1 instead or
//   create one if it wasn't there. 
//   We also decided to sort our totals for each person and simply push it to the officers object. So were
//   created a loop for the officers object. For the votes we had to sort it and convert it to an array,
//   which is much harder in JavaScript. We had to look online for a function to manage this. 
// What concepts were solidified in the process of working through this challenge?
//   - Iterating through hashes in Javascript was definitely solidified better and I will keep this
//   assignment as a resource for reviewing this syntax. Also iterating through a hash was something that
//   I hadn't done before in JS so this was a good exercise for me.




// __________________________________________
// Test Code:  Do not alter code below this line.


function assert(test, message, test_number) {
  if (!test) {
    console.log(test_number + "false");
    throw "ERROR: " + message;
  }
  console.log(test_number + "true");
  return true;
}

assert(
  (voteCount.president["Bob"] === 3),
  "Bob should receive three votes for President.",
  "1. "
)

assert(
  (voteCount.vicePresident["Bob"] === 2),
  "Bob should receive two votes for Vice President.",
  "2. "
)

assert(
  (voteCount.secretary["Bob"] === 2),
  "Bob should receive two votes for Secretary.",
  "3. "
)

assert(
  (voteCount.treasurer["Bob"] === 4),
  "Bob should receive four votes for Treasurer.",
  "4. "
)

assert(
  (officers.president === "Louise"),
  "Louise should be elected President.",
  "5. "
)

assert(
  (officers.vicePresident === "Hermann"),
  "Hermann should be elected Vice President.",
  "6. "
)

assert(
  (officers.secretary === "Fred"),
  "Fred should be elected Secretary.",
  "7. "
)

assert(
  (officers.treasurer === "Ivy"),
  "Ivy should be elected Treasurer.",
  "8. "
)




