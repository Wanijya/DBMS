# DBMS notes

- Stand for Data Base Management System. 
- and we use MySQL.
> DBMS ke phele ham use krte the File System. 

> There are two types of DBMS :

1.  SQL :  This type of data is R DBMS.
2.  NoSQL : Ye rkhata hai Documents form me data ko.


### Que.  Why we Shifted File System to DBMS.
> Flow retrieval: Retrieval means data fetch.
Residency: Means Duplication.
Heavy Application, data storage problems, data Access slow
For example, the banking system gives us a savings account. Ab saving Account mai kya kya hoga: Details, Credit and Debit, Deposit and Withdrawal, Lone related ye sari info hoga. To es me hoga kya. After 10 years me kya hoga ki user ne us account ko kra liya current account. To developer ko dubara sab likhana padhta tha file System me to is me retardancy jhelna padhta tha.



### SQL vs MySQL:
- SQL is a programming language. This is also a concept.
- MySQL is a software and this is an implementation.


### Data Abstraction:
> Data Abstraction in SQL is all about simplifying how we interact with data. It hides the complex details of how data is stored and managed, so users can work with the data more easily.

> SQL mein data abstraction ka matlab hai data ke complex details ko chhupa kar, users ko ek simple tareeke se data ke saath kaam karne dena.

There are 3 Levels:

1. **Internal Level / Physical Level:**  This is the lowest level, dealing with how data is stored on disk (like in files or databases). Usually, only database administrators or system developers need to worry about this level.
2. **Logical Level / Conceptual Level:** This level focuses on what data is stored and how it's organized (like tables, columns, and relationships). Developers and database administrators use this level to design and manage the structure of the database.
3. **View Level: **The highest level involves how users see and interact with the data. It allows different users to see the data in different ways, depending on their needs. Regular users aur applications is level par data access karte hain bina yeh soche ki data kaise store ya organize kiya gaya hai.


### Schema vs Sub-Schema: 
- Schema is the complete layout of the database, showing all tables and their connections.
- Sub-Schema is a smaller, customized view of the schema, showing only the parts of the database that a specific user or application needs.


### Instance:
- In DBMS a worker on a particular time, apke kisi table me kuchha records rkhe hai wo sare records db me instance khelata hai. 


### Types of Architecture: 
1. 1 Tier Architecture
2. 2 Tier Architecture
3. 3 Tier Architecture