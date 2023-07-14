-- Create the users
CREATE USER admin IDENTIFIED BY bossman ;
CREATE USER manager IDENTIFIED BY lessbossman ;
CREATE USER finance IDENTIFIED BY calulator ;

-- Grant privileges to admin user
GRANT ALL PRIVILEGES TO admin;

-- Grant privileges to manager user
GRANT SELECT ANY TABLE TO MANAGER;
GRANT UPDATE ANY TABLE TO MANAGER;

-- Grant privileges to finance user
GRANT SELECT ANY TABLE TO FINANCE;

