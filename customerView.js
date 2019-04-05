// required packages
let inquirer = require("inquirer");
let mysql = require("mysql");
require("");

// connection for database
let connection = mysql.createConnection({
    host: "localhost",
    port: "3000",
    user: "root",
    password: "",
    database: "bamazon"
});


connection.connect(function (error) {
    if (error) {
        console.log("error connecting" + error);
    }
    else loadInventory();

});

function loadInventory() {
    connection.query("SELECT * FROM inventory", function (error, res) {
        if (error) throw error;

        console.table(res);

        customerInput(res);
    });
}

function customerInput(inventory) {
    inquirer.prompt([{
        type: 'input',
        name: 'choice',
        message: 'which item number are you looking for? [Quit = Q]',
        validate: function (val) {
            return
        }
    }])

        .then(function (val) {
            checkforquit(val.choice);
            let inputId = parseInt(val.choice);
            let product = checkInventory(choiceId, inventory);
        })
}
