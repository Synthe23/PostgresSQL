//* 1>  Relational databases:- stores the data in the tabular format suvh as the users table, addresses table etc.
// One Post -> One user (1 to 1 relationship)
// One user -> many posts(1 to many relationship)

//* 2> Non relational Databases:- They dont use tables to store data and and they store the data in xml files or the documents like Mongodb

//* 3> We use relational db where the data is structured, has transactions, joins, strong validations

//* 4> We use non-relational where the data changes very often, documents-indepenedent

//* 5> To exit press \q or type "exit"

//* 6> SELECT current_database(); - displays current selected db

//* 7> SELECT current_user; - gets the current user

//* 8> SELECT version(); - return the current postgres version

//* 9> psql -U postgres -d postgresql_part1 - to run the db from terminal