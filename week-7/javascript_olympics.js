
// Your previous Ruby content is preserved below:


 // JavaScript Olympics

// I paired with: David Diaz on this challenge.

// This challenge took me [1] hours.


// Warm Up
// Bulk Up

var athletes = [ 
  emily = { name: "Emily", event: "Basketball"},
  jenny = {name: "Jenn", event: "Shock Put"}
];


function addWin(array) {
  for ( i = 0 ; i < athletes.length; i++) {
    array[i].win = array[i].name + " won the " + array[i].event + "!";
    console.log( array[i] );
  }
}

addWin(athletes)

// --------------

var string1 = "This is a string";

function reversal(string) {
  newArray = string.split("")
  console.log( newArray.reverse().join("") )
};

reversal(string1)

// Jumble your words




// 2,4,6,8

function getEvens (array){
  emptyArray = [];
  for(var i = 0; i < array.length; i++){
    if(array[i] % 2 == 0){
      emptyArray.push(array[i]);
    }
  }
  return emptyArray
};


// "We built this city"

function Athlete(name, age, sport, quote){
  this.name = name;
  this.age = age;
  this.sport = sport;
  this.quote = quote;
}


// Reflection
What JavaScript knowledge did you solidify in this challenge?
	I got more experience with iterating through arrays and working with objects which I think
	for our pace of learning JS is always welcome. This was also my first intro to javascript 
	constructors.
What are constructor functions?
	Constructors are functions that are used to develop objects based on what is fed into them
	as arguments. Some people can argue that they are the equivalent of ruby classes but this 
	isn't necessarily true. Constructors in JS are primarily used to produce objects that follow
	a standardized format from given arguments. 
How are constructors different from Ruby classes (in your research)?
	This is an interesting question as it is easier to explain constructors as Ruby classes but
	this would not be correct. Classes actually have their own internal state for querying and 
	managing object behavior. One thing is they allow variables to be private yet shared within
	the class itself. Constructors don't have this function and but can be managed in a way to 
	perform similarly but JS doesn't have its own special special syntax for creating instances.
