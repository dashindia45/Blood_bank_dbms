# Blood_bank_dbms
![A_professional_and_clean_illustration_of_a_blood_b](https://github.com/user-attachments/assets/d9e1940e-6f0b-4367-9bc5-50c60af3c386)

###### Blood Bank Database Project ######
# Overview
This project entails the creation of a comprehensive Blood Bank Database, designed to efficiently manage and monitor blood donation and distribution. The database includes an Entity-Relationship (ER) diagram, normalization processes, a set of queries, and SQL functionalities to ensure robust data management and integrity.
# Entity Sets
The database comprises the following entity sets:
Blood Bank (weak entity)
Donor
Recipient
Hospital
Staff
Blood Count
# Assumptions
Each hospital has only one associated blood bank.
A recipient can receive blood either from the hospital where they are admitted or directly from the blood bank.
Each donor donates 1 liter of blood.
# Features
# Immediate Blood Donation: 
Facilitates the quick donation and transfer of blood.
# Compatibility Checks:
Ensures that the donated blood matches the recipient’s blood type.
# Inventory Management:
Manages the stock of different blood types across multiple hospitals and blood banks.
# Donor and Recipient Tracking:
Keeps track of donor and recipient information, ensuring a reliable and efficient system.
# Staff Management: 
Maintains records of the staff associated with various blood banks.

# Entity-Relationship (ER) Diagram:
A detailed ER diagram that maps out all entities, their attributes, and relationships within the blood bank system.
# Normalization: 
The database schema has been normalized to the third normal form (3NF) to eliminate redundancy and ensure data integrity.
# SQL Queries: 
A collection of SQL queries for various operations, such as retrieving donor information, tracking blood inventory, and managing blood distribution.
# SQL Functionalities:
Advanced SQL functionalities, including stored procedures, triggers, and views, to automate tasks and enhance data management.
# ER Diagram
The ER diagram includes the following key entities and relationships:
[https://drive.google.com/file/d/1HPH3hKddDahUY809yhZZ6yt6WJ1GNR4V/view?usp=drive_link]
# Relational-Schema 
Refer this web for Relational_Schema
[https://drive.google.com/file/d/1gPd_QHjNxM80iY_CnSnO0swc-YaFe7-i/view?usp=drive_link]
# Normalization
The database schema has been meticulously normalized through the following stages:

First Normal Form (1NF): Ensures all columns contain atomic values and each record is unique.
Second Normal Form (2NF): Removes partial dependencies, ensuring all non-key attributes are fully functional dependent on the primary key.
Third Normal Form (3NF): Eliminates transitive dependencies to ensure that non-key attributes are only dependent on the primary key.
at the end Database is in BCNF form.
# SQL Queries
The project includes a variety of SQL queries for efficient data retrieval and management, such as:

Retrieving donor information based on blood type.
Tracking available blood units by type and expiration date.
Managing blood donation and distribution records.
Generating reports on blood inventory status.
# SQL Functionalities
To enhance the database's functionality, the project includes:

Stored Procedures: Automate common tasks such as adding new donors, updating inventory, and processing blood requests.
Triggers: Maintain data integrity and enforce business rules automatically upon specific actions like data insertion or update.
Views: Simplify complex queries and provide abstracted views of the data for reporting and analysis.

# How to Use
# Clone the repository.
Import the provided SQL script into your database management system.
Run the script to create the database and tables.
Insert sample data or modify it as needed.
Use the provided queries to interact with the database and retrieve the necessary information.


# Conclusion
This Blood Bank Database Management System project demonstrates the design and implementation of a comprehensive database system to address the critical needs of blood donation and transfusion in emergency situations. It ensures compatibility, manages inventory, and tracks donors and recipients effectively, contributing to the overall efficiency of blood bank operations.

