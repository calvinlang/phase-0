// My Game
// Player will be gambling on a stock market where there are 5 stocks to pick from.
// Each stock will display their chance of winning 
// Player starts with $500. Player goal is to have 1000 dollars

// Pseudocode
// input: functions to display stock choices, and buy stocks
// Output: Stock choices displayed and the effect of your stock purchase
// Process:
// Create 3 stock object with names, costs and risk quotient
// Create a player profile object with money and name

// Function 1: Display the stocks
// Display player money
// Display stock1, risk and risk quotient
// Repeat for stock 2 and 3

// Function 2: accepts the object name as an argument
// Generate variable that converts risk quotient to percentage (4 = 25%)
// If money is less than 0 say you have no money and exit function
// Working part:
// 	Display what share has been selected
// 	Display what risk info about the share
// 	Create hold please with "..."
// 	If statement that takes the risk * random 0-1 and if it is less than 1
// 		Congratulations! and add 100 * riskto player money
// 	If greater than 1
// 		Sorry, and subtract 100





// Functions:
// Portfolio
// The office
// Display market
// Buy
// Sell
// Advance one day

// Underneath it all will be how the stocks are affected.



// var mgl = {
// 		name: "Magellan",
// 		cost: 100,
// 		risk: 4, // 25%
// 		riskName: "High"
// 	};
// var	apr = {
// 		name: "Apera",
// 		cost: 100,
// 		risk: 2, // 50%
// 		riskName: "Medium"
// 	};
// var	hgn = {
// 		name: "Holgren",
// 		cost: 100,
// 		risk: 1.33, // 75%
// 		riskName: "Low"
// 	};

// var player = {
// 	name: "Doogan",
// 	previous_money: 300,
// 	money: 300
// };

// function displayStocks() {
// 	console.log( "You currently have $" + player.money );
// 	console.log(  "All stocks cost $100. Your choices are:");
// 	console.log( mgl.name + ": " + mgl.riskName + " Risk with " + (100*1/mgl.risk) + "% chance of success");
// 	console.log( apr.name + ": " + apr.riskName + " Risk with " + (100*1/apr.risk) + "% chance of success");
// 	console.log( hgn.name + ": " + hgn.riskName + " Risk with " + Math.round(100*1/hgn.risk) + "% chance of success");
// };

// function buy(stock) {
// 	calc_risk = 100 * (1 / stock.risk);
// 	if (player.money < 0) {
// 		console.log( "Sorry you are broke and have no money!" );
// 		return;
// 	};

// 	console.log( "You are buying shares of " + stock.name )
// 	console.log( "This is a high risk stock with a " + calc_risk + "% chance of success.")
// 	function pause() {console.log( "Please hold, 1 day passing." )}
// 	console.log( "..." )
// 	console.log( "..." )
// 	console.log( "... ..." )	

// 	winloss = Math.random() *  stock.risk
// 	if (winloss < 1) {
// 		player.previous_money = player.money
// 		player.money += (100 * stock.risk)
// 		console.log( "CONGRATULATIONS! Your stock was a success." )
// 	}
// 	else {
// 				player.previous_money = player.money
// 		player.money -= 100
// 		console.log( "Sorry your stock failed" )

// 	}
// 		console.log( "You now have $" + player.money )
// }


// displayStocks()
// buy(mgl)
// buy(mgl)
// buy(apr)
// buy(hgn)
// buy(mgl)
// buy(hgn)
// buy(apr)
// displayStocks()

// Refactored

var mgl = {
		name: "Magellan",
		cost: 100,
		risk: 4, // 25%
		riskName: "High"
	};
var	apr = {
		name: "Apera",
		cost: 100,
		risk: 2, // 50%
		riskName: "Medium"
	};
var	hgn = {
		name: "Holgren",
		cost: 100,
		risk: 1.33, // 75%
		riskName: "Low"
	};

var player = {
	name: "Doogan",
	previous_money: 300,
	money: 300
};

// function riskNumber(stock) {Math.round(100*1/stock.risk)};

function displayStocks() {
	console.log( "You currently have $" + player.money );
	console.log(  "All stocks cost $100. Your choices are:");
	function displayStockLine(stock) {console.log( stock.name + ": " + stock.riskName + " Risk with " + Math.round(100*1/stock.risk) + "% chance of success")}
	displayStockLine(mgl);
	displayStockLine(apr);
	displayStockLine(hgn);
};

function buy(stock) {
	if (player.money < 0) {
		console.log( "Sorry you are broke and have no money!" );
		return;
	};

	console.log( "You are buying shares of " + stock.name );
	console.log( "This is a " + stock.risk + " stock with a " + Math.round(100*1/stock.risk) + "% chance of success.");
	console.log( "Please hold, 1 day passing." );
	console.log( "..." );
	console.log( "..." );
	console.log( "... ..." );
	if ( Math.random() * stock.risk < 1) {
		player.money += (100 * stock.risk)
		console.log( "CONGRATULATIONS! Your stock was a success." )
	}
	else {
		player.money -= 100
		console.log( "Sorry your stock failed" )
	};
	console.log( "You now have $" + player.money )
};

displayStocks()
buy(mgl)
buy(mgl)
buy(apr)
buy(hgn)
buy(mgl)
buy(hgn)
buy(apr)
displayStocks()

// Reflection
// What was the most difficult part of this challenge?
// 	The most difficult part was actually planning it out without having the gets.chomp option available. I wasn't sure how
// 	this was going to work in command line if it was just going to something with player interaction. I realized later that
// 	it was like the bingo game where we would just use driver code to put in the commands. So then the hard part was thinking
// 	of a system that would have very few commands to run.
// What did you learn about creating objects and functions that interact with one another?
// 	I learned that first of all there has to be a lot of consistency. All objects must have the same properites, which makes symbols
// 	valuable, to be called within function. Other than that, it really is just about how one chooses to manage the 
// Did you learn about any new built-in methods you could use in your refactored solution? If so, what were they and how do they work?
// 	I didn't for this. The game ended up being a lot simpler than I originally thought in my head. I may make it a bit more
// 	elaborate for the future but right now it's really simple.
// How can you access and manipulate properties of objects?
// 	I don't know how to make it work, but originally I wanted to make the stocks in a nested object but my function could 
// 	ot accept object ArgumentPassed.name but it would just end up being called undefined. To access and manipulate objects
// 	it just requires knowing how to call it and in the nest structure and then it can be managed like any object. 

