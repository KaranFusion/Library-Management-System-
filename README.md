# Library Management System 📚 (SQL Project)

## 📌 Overview
This project demonstrates SQL skills by designing and managing a **Library Management System** database.  
It includes **table creation, data insertion, relationships using foreign keys, and queries** to retrieve and manage data.  
The goal is to showcase database design, constraints, and query writing skills.

---

## ✨ Features
- 📂 **Database Creation** – LibraryDB for storing all data.
- 📚 **Books Table** – Stores details about books.
- 👤 **Members Table** – Stores member information.
- 📑 **IssuedBooks Table** – Tracks issued books and return status.
- 🔍 **Queries** – Retrieve book details, issued books, total count, and overdue books.

---

## 🛠️ Technologies Used
- **MySQL** (or any SQL database engine)
- SQL Commands: `CREATE`, `INSERT`, `SELECT`, `JOIN`, `COUNT`, `FOREIGN KEY`

---

## 📂 Database Structure
**1. Books Table**
- BookID (Primary Key)
- Title
- Author
- Genre
- Price

**2. Members Table**
- MemberID (Primary Key)
- Name
- Email
- JoinDate

**3. IssuedBooks Table**
- IssueID (Primary Key)
- BookID (Foreign Key → Books)
- MemberID (Foreign Key → Members)
- IssueDate
- ReturnDate

---

## 🚀 How to Run
1. Open **MySQL Workbench** or your preferred SQL tool.
2. Copy the contents of `library_management.sql`.
3. Execute the script to create tables and insert data.
4. Run the queries to see results.

---


