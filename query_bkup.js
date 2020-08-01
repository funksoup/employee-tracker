let query = 'SELECT last_name FROM employee';

  connection.query(query, function(err, results) {
    if (err) {
      throw err;
    }
    console.log(Object.values(results));
  });


function UpdateRole (){
let query = `SELECT first_name, last_name, title FROM employee a
            join role b on a.role_id=b.id`
  connection.query(query, function(err, results) {
    if (err) {
      throw err;
    }
    console.log(Object.values(results));
  });