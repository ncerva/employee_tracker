const mysql = require('mysql');
const connection = mysql.createConnection({
    host: 'localhost',
    port: 3306,
    user: 'root',
    password: 'password',
    databse: 'employeetracker_db',
});

const promptUser = () => {
    inquirer.prompt([
    {
        type: 'list',
        message: 'What would you like to do?',
        name: 'choice',
        choice: [
            'View All Employees?',
            'View All Employees By Roles?',
            'View all Emplyees By Deparments',
            'Update Employee',
            'Add Employee?',
            'Add Role?',
            'Add Department?',]
    }
])
.then(function(viewAl){
    switch (viewAl.choice){
        case 'View All Employees?':
            viewAllEmployees();
            break;
        case 'View All Employees by Roles?':
            viewAllRoles();
            break;   
        case 'View All Employees by Departments?':
            viewAllDepartments ();
            break;  
        case 'Add Employee?':
            addEmployee ();
            break;  
        case 'Add Role?':
            addRole ();
            break;  
        case 'Add Department?':
            addDepartment ();
            break;
    }
});
};