const mysql = require("mysql");
const inquirer = require('inquirer');
const cTable = require('console.table');
const util =  require("util");
// promisify connection.query
querySync = util.promisify(connection.query);

var connection = mysql.createConnection({
  host: "localhost",

  // Your port; if not 3306
  port: 3306,

  // Your username
  user: "root",

  // Your password
  password: process.env.MYSQL_KEY
  // password: "fr33fL0w",
  database: "employeeTrackerDB"
});

connection.connect(function(err) {
  if (err) throw err;
  console.log("connected as id " + connection.threadId);
  // promisify query to use as a promise
  connection.querySync = util.promisify(connection.query);
});

function init() {
	const menuOptions = ['Add an employee', 'View an employee', 'Update an employee', 'Exit'];
	inquirer.prompt([
	{
		name: 'menu',
	    type: 'list',
	    message: 'What would you like to do?',
	    choices: menuOptions
	}])

	.then(answers => {
		switch(answers.menu) {
			case menuOptions[0]:
				addEmployee();
				break;

			case menuOptions[1]:
				viewEmployee();
				break;

			case menuOptions[2]:
				updateEmployee();
				break;

			case menuOptions[3]:
				exitApp();
				break;

			default: init();
	}})

    connection.end();
};



function addEmployee() {

}

function viewEmployee() {
	const sqlPromises = [
	connection.querySync("SELECT * FROM department"),
	connection.querySync("SELECT * FROM role"),
	connection.querySync("SELECT * FROM employee")
	]
	Promise.all(sqlPromises)
		.then(responses => {
			responses.forEach(data => console.table(data))
			init();
	});
};

function updateEmployee() {

}


function exitApp() {

}


// function employeeSearch() {

// 	inquirer.prompt(
// 	{
// 		name: 'employee',
// 	    type: 'list',
// 	    message: 'Select the employee',
// 	    choices: menuOptions
// 	});

// 	.then(menuAnswer => {
// 	const artistResult = 	artistAnswer.artist;
// 	query = "SELECT * FROM top5000 WHERE ?";
// 	connection.query(query, { artist: artistResult}, function(err, res) {
// 		if (err) throw err;
// 		console.log(res.map(ele => ele.song));
// 	})

// 	})
// };