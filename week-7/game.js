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



var stocks = {
	mgl: {
		name: "Magellan",
		cost: 100,
		risk: 4,
		riskName: "High"
	},
	apr: {
		name: "Apera",
		cost: 100,
		risk: 2,
		riskName: "Medium"
	},
	hgn: {
		name: "Holgren",
		cost: 100,
		risk: .5,
		riskName: "Low"
	}
};

var player = {
	name: "Doogan",
	previous_money: 300,
	money: 300
};

function displayStocks() {
	console.log( "You currently have $" + player.money )
	console.log(  "All stocks cost $100. Your choices are:")
	console.log( stocks.mgl.name + ": " + stocks.mgl.riskName + " Risk")
	console.log( stocks.apr.name + ": " + stocks.apr.riskName + " Risk")
	console.log( stocks.hgn.name + ": " + stocks.hgn.riskName + " Risk")
};

function buy(stock) {
	console.log( stocks.stock )
	// console.log( "You are buying shares of " + stocks.stock.name )
	// return Math.floor(Math.random(stocks.stock.risk))
}



displayStocks()
buy(mgl)












