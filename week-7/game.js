// My Game
// Player will be gambling on a stock market where there are 5 stocks to pick from.
// Each stock will display their chance of winning 
// Player starts with $500. Player goal is to have 1000 dollars

// Pseudocode
// Ask user the name
// Create object player stats with name, money and their stock portfolio.
// Create object with the 5 stocks and have inside objects of cost and chances
// Create choose function where player can see options 1-X for what to perform.
// These functions should display:
// 1. View Portfolio
	// Function that shows with nice output of the player object
// 2. Display market
	// Function that displays the 
// 3. Buy
// 4. Sell
// 5. Advance 1 day
// 6. Buy furniture


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
// 	// function displayLine(stock) {
// 	// 	console.log( stock.name + ": " + stock.riskName + " Risk with " + round(100*1/stock.risk) + " chance of success")
// 	// }
// 	console.log( mgl.name + ": " + mgl.riskName + " Risk with " + (100*1/mgl.risk) + "% chance of success");
// 	console.log( apr.name + ": " + apr.riskName + " Risk with " + (100*1/apr.risk) + "% chance of success");
// 	console.log( hgn.name + ": " + hgn.riskName + " Risk with " + Math.round(100*1/hgn.risk) + "% chance of success");
// };

// function buy(stock) {
// 	calc_risk = 100 * (1 / stock.risk);
// 	if (player.money == 0) {
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

var function displayStocks() {
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

	console.log( "You are buying shares of " + stock.name )
	console.log( "This is a high risk stock with a " + Math.round(100*1/stock.risk) + "% chance of success.")
	console.log( "Please hold, 1 day passing." )	
	console.log( "..." )
	console.log( "..." )
	console.log( "... ..." )
	if ( Math.random() * stock.risk < 1) {
		player.money += (100 * stock.risk)
		console.log( "CONGRATULATIONS! Your stock was a success." )
	}
	else {
		player.money -= 100
		console.log( "Sorry your stock failed" )

	};
		console.log( "You now have $" + player.money )
}

displayStocks()
buy(mgl)
buy(mgl)
buy(apr)
buy(hgn)
buy(mgl)
buy(hgn)
buy(apr)
displayStocks()

