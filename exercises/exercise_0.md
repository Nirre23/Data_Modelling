# 0. Convert into json-format

a)
<img src = '../assets/employees-png.png' width = 300>
<br>
<br>
b.)

{
"Employees" [
{
"employee_id: 1,
"first_name": "Hakan,
"last_name" : "Hakansson",
"department": "HR",
"salary" : 30000
},
{
"employee_id": 2,
"first_name" : "Bob",
"last_name" : "Bobson",
"department : "IT",
"salary : "35000"
}
]
}

# 1. Convert json-file to tables

''' You have this json data, convert it into three tables: Hospital, Department and Doctor. Fill these tables with data. Do this manually and not programmatically.

{
"hospital": "Sjukhusstock",
"address": "Drottninggatan 3, Stockholm",
"departments": [
{
"name": "Kardiologi",
"doctors": [
{ "id": 1, "name": "Dr. Abra Abrahamson" },
{ "id": 2, "name": "Dr. Erika Eriksson" }
]
},
{
"name": "Neurologi",
"doctors": [{ "id": 3, "name": "Dr. Sven Svensson" }]
}
]
} -->

### Solution

- identify entities
- identify relationships

**Initial naive conceptual ERD**

<img src = '../assets\Exercise_01.png' width=300>

**Initial tables**

Hospital

| Hospital_id | name         | address          |
| ----------- | ------------ | ---------------- |
| 1           | Sjukhusstock | Drottninggatan 3 |

Department

| department_id | name       |
| ------------- | ---------- |
| 1             | Kardiologi |
| 2             | Neurologi  |

Doctor

| Doctor_id | name             | department_id |
| --------- | ---------------- | ------------- |
| 1         | Abra Abrahamsson | Kardiologi    |
| 2         | Erika Eriksson   | Kardiologi    |
| 3         | Sven Svensson    | Neurologi     |

Refined with bridge tables to reflect many-to-many relationships

<img src = "../assets/hospital_ex0.png" width=500>

#Exercise 0

## 1. Hospital task

### Solution

Hospital Department

| Hospital_department_id | hospital_id | department_id |
| ---------------------- | ----------- | ------------- |
| 1                      | 1           | 1             |
| 2                      | 1           | 2             |

HospitalDoctor

| hospital_doctor_id | hospital_id | doctor_id |
| ------------------ | ----------- | --------- |
| 1                  | 1           | 1         |
| 2                  | 1           | 2         |
| 3                  | 1           | 3         |

TODO: Left for the reader

DepartmentDoctor

TODO: left for the reader

Test a join

Want information on sjukhusstock and inte departments

- hospital_department can join with department_id on deparment table
  and hospital_id on hospital table
- query name from hospital table name from department table

TODO: left for reader: create this sql query

SELECT h.name AS hospital_name, d.name AS department_name
FROM Hospital h
JOIN hospital_department hd ON h.hospital_id = hd.hospital_id
JOIN Department d ON hd.department_id = d.department_id
WHERE h.name = 'Sjukhusstock';

## 2 Library Bookly

a.

## Book

| ISBN | title | author |
| ---- | ----- | ------ |

# Note !

ISBN is a unique number for each book, which could be used as a Primary Key, this will make it into a natural key.

## Member

| membership_id | name | phone | address | email |
| ------------- | ---- | ----- | ------- | ----- |

## Borrowing

| borrow_id | borrow_date | return_date | ISBN | membership_id |
| --------- | ----------- | ----------- | ---- | ------------- |

b.

- A member can have zero, one or several Borrowings
- A Borrowing can be made my one and only one member
- A Borrowing is linked to and and only one Book
- A A book can be in zero, one or more Borrowings

c.

## Initial conceptual ERD

<img src = '../assets\Member-book.png'>

<br>

## Replaced many to many with a bridge table (composite entity)

<img src = '../assets\Member-book-bridge.png'>

<br>

# 3 conceptual ERD to words

This is an ERD conceptual diagram that a database designer and the business stakeholders agreed upon in a car rental company called Carent.

  <img src="https://github.com/kokchun/assets/blob/main/data_modeling/car_rental.png?raw=true" alt="car rent" width="500">

a) Describe the entities in this conceptual ERD.

b) Write out the relationship labels.

c) Describe the relationships between the entities (one-to-many, one-to-one and many-to-many).

d) Define the relationship statement for example: "A Customer can have one or more Rentals".

a

- Customer is a person that can rent cars.
- Car is a vehicle than can be rented by a Customer.
- Rental (composite entity) is a transaction between Customer and Car

<img src = '../assets\Car-rental.png' width = 500 height = 140>

b) see image above

c)

- Customer to rental (one to many)
- Rental to customer (Many to one)
- Rental to car (Many to one)
- Car to rental (One to many

d)

- Each Customer makes on or more Rentals over time
- Each Rental is connected to one Customer
- Each Rental is for one Car
- Each

## 4. Online Store

You are designing a database for an online store that sells multiple products. Customers can place multiple orders, and each order contains multiple products.

a) Identify entities and their relationships

b) Create a conceptual ERD with cardinalities

### Solution

a)

# Customer

| Customer_id | name | email | phonenumber |
| ----------- | ---- | ----- | ----------- |

# Orders

| Order_id | customer_id | order_date |
| -------- | ----------- | ---------- |

# Product

| product_id | price | name |
| ---------- | ----- | ---- |

# Ordeline (bridgetable)

| orderline_id | order_id | product_id | quanitity |
| ------------ | -------- | ---------- | --------- |

- A Customer can be linked to zero, one or many orders
- An order can be linked to one and only one customer.
- An order can contain on or many product.
- One or many prodduct can be in an order.
- Every row in orderline represents a specific order and stores the quantity of that product in the order.

b) See image below:

<img src = ../assets/online_store.png width = 400>

## 5. University management system

A university needs a system to manage students, courses, and professors.

- each student can enroll in multiple courses.
- each course is taught by one professor.
- a teacher can teach multiple courses.

a) Identify entities and their relationships

b) Come up with possible attributes for the entities

c) Draw conceptual ERD with cardinalities

d) Define business rules (e.g. a student can enroll in max 4 courses)

a)
Students, courses, professors, enrollment
<img src = '../assets/Students_courses.png' width = 500>

b) See attributes below:
<br>
<img src="../assets\students_ERD.png" width = 500>

## 6 Onshop

An e-commerce platform Onshop manages customers, orders, and products.

a customer can place multiple orders.
each order contains multiple products.
a product can belong to multiple categories.
a) Identify key entities and their attributes (e.g., customer_name, order_date)

b) Sketch the conceptual ERD.

c) Define business rules

## Solution

a )
### Customer

customer_id,name,phone_number,email,address

### Product

product_id, price, name

### Order

order_id, order_date, customer_id, total_amount

### Category

category_id, name, description

### Orderline

orderline_id, order_id, product_id, quantity,

### ProductCategory

product_id, category_id

b ) 

<img src = ../assets/onshop.png width = 300>

c)

- A customer can make one or many orders.
- A order can only belong to one customer.
- An order can contain one ore many products.
- A product can appear in on or many orders.
- A product can be in one category.
- A category can contain many products.
- An orderline links a product to an order.
- Every orderline is connected to one order and one product.
- Orderline table makes sure the right products and amount registers for everh order.
- Product table has the stock quantity status and price for every product.
- When a orderline is created, the stock quantity for the actual product is reduced.
- The total amount for an order is calculated on the sum of prices of products in the order, multiplied by the quantity in the orderline.

# 7. Theoretical questions
a) What is a conceptual data model, and why is it important?

b) Storing age in a database, is that a good idea, why?

c) What are the three types of data structures, and how do they differ?

d) Give examples of how each data structure is used in real-world applications

e) What is cardinality in data modeling, and why is it important?

f) What are the different steps of data modeling?

g) What factors influence the choice between using an RDBMS and NoSQL?

### Solution

a)
A conceptual data model is a abstract and high-level representation of the key entities (objects or units) in a system nad their relationships.

b) Storing age in a database is not recommended because the age changes every year for every person in the database. It would be a lot of work to manually change the age everytime someone has a birthday. It is better to store the date of birth.

c) Conceptual, Logical, Physical.
Conceptual data structure describes the entites and their relationships.
A logical data structure has more detail like datatypes and keys (primary, foreign)
A physical data model draws on the requirements from the logical model to create a real database. With sql code eg.

d) A conceptual data model can be used in e-commerce with entites like customer, product, order etc.
Focuses on the high-level view of data and its relationships (e.g., entities and their connections).

Logical Data Model: Defines the structure in more detail, including tables, attributes, and relationships, without considering physical storage. Can also be used in e-commerce.

Physical Data Model: Describes the actual implementation details, including how data is stored, indexed, and optimized for a specific database system.

e) Cardinality refers to the number of instances of one entity that can or must be associated with each instance of another entity in a relationship. In database design and ERDs,
cardinality defines the number of occurences of on entity in relation to another. Understanding cardinality is crucial for definging relationships in a database.

f) 
Conceptual data modeling to identift entities and relationships.
Logical data modeling to refine the conceptual model by defining attributes, keys, normalization rules while remaining independent of  a specific database system.
Physical data modeling to create a database schema including tables, indexes, constrains and data types, tailored to a specific database system eg  postgreSQL or MySQL.

- RDBMS	- RElational database management system
- relational model - A way of structuring data using tables, rows and columns
- conceptual model- a high level data model to show entities and relationships	
- logical model	- A detailed representation of data structures and relationships
- physical model	- The actual implementation of a database on a system.
- ERD - A diagram that visually displays the entites and their relationships.
- data modeling	- The process of designing a database structure.
- data integrity	- Ensuring accuracy and reliabillity of data.
- data consistency	- Maintaining uniform and valid data acoss  the database 
-field - single piece of data in a column.
- attribute	- a property or characteristic of an entity 
- data type	- the kind of data stored in a field (eg. INT,VARCHAR)
- tuple	- A single row in a relational table
- data redundancy	Unnecessary duplicates of data in a database
- transaction	- A sequence of database operations that must be completed together.
- cardinality	-  The number of relationships between entities
- one-to-one	 A relationship where one entity is linked to only one other entity
- one-to-many- a relationship where one entity is linked to multiple entities.

