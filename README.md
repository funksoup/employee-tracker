
# Employee Tracker

A command-line solution for managing a company's employees using node, inquirer, and MySQL that allows the user to:

  * Add departments, roles, employees

  * View departments, roles, employees

  * Update employee roles


------

## Tech/Framework Used

Project is created with:

* JavaScript
* Node.js
* Inquirer
* MySQL


## Usage

Describe the application's functionality:

The application will be invoked with the following command:
```
node index
```

The schema is as follows:

![Database Schema](Assets/schema.png)

* **department**:

  * **id** - INT PRIMARY KEY
  * **name** - VARCHAR(30) to hold department name

* **role**:

  * **id** - INT PRIMARY KEY
  * **title** -  VARCHAR(30) to hold role title
  * **salary** -  DECIMAL to hold role salary
  * **department_id** -  INT to hold reference to department role belongs to

* **employee**:

  * **id** - INT PRIMARY KEY
  * **first_name** - VARCHAR(30) to hold employee first name
  * **last_name** - VARCHAR(30) to hold employee last name
  * **role_id** - INT to hold reference to role employee has
  * **manager_id** - INT to hold reference to another employee that manager of the current employee. This field may be null if the employee has no manager


Create a `.env` file in the root folder of the app and include the following, where `password` should be replaced with your own MySQl password:

`MYSQL_KEY = 'password'`


This gif demonstrates the application's functionality: [UPDATE]


## License

This project is licensed under the MIT license.


## Contributing

Pull requests are welcome. For major changes, please open an issue first to discuss what you would like to change.


### Step 1

* Option 1:🍴 Fork this repo!

* Option 2: 👯 Clone this repo to your local machine using https://github.com/funksoup/employee-tracker.git

### Step 2

* HACK AWAY! 🔨🔨🔨

### Step 3

* 🔃 Create a new pull request using https://github.com/funksoup/employee-tracker/compare


