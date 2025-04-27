# 📚 README: Student Attendance and Performance Tracking System

---

## 📅 Project Details

- **Student Name**: Confiance UTITAMAHORO
- **Student ID**: 27185
- **Lecturer**: Eric Maniraguha
- **Course Code & Name**: INSY 8311 - Database Development with PL/SQL
- **Academic Year**: 2024-2025
- **Submission Date**: April 27, 2025

---

## 🌐 Introduction

In modern universities and colleges, efficiently tracking student attendance and performance is crucial for maintaining academic excellence. Manual systems are prone to errors, data loss, and inefficiency. This project presents a comprehensive Oracle PL/SQL database solution designed to automate and streamline attendance and performance management. It incorporates tables, procedures, functions, triggers, cursors, packages, and audit logging to ensure high data integrity, reliability, and security.

---

## 💪 Problem Statement

Educational institutions often struggle with:
- Inaccurate manual attendance records
- Difficulty tracking students' academic performance
- Lack of real-time data for decision-making
- Security risks related to manual data manipulation

This project addresses these challenges by providing an automated, secure, and auditable database system.

---

## 🛍️ Target Users

- Students
- Instructors
- Academic Administrators

---

## 🚀 Project Goals

- Accurate tracking of attendance and grades
- Automated and secure data manipulation
- Real-time access to academic records
- Improved decision-making through MIS integration
- Secure auditing of database transactions

---

## 📊 Entity-Relationship Diagram (ERD)

**Entities:**
- Students
- Instructors
- Courses
- Attendance
- Grades

**Relationships:**
- Students enroll in Courses
- Instructors teach Courses
- Students are marked present/absent via Attendance
- Students receive Grades for Courses

---

## 🔧 Database Structure

### 🔢 Tables
- Students
- Instructors
- Courses
- Attendance
- Grades
- Public_Holidays
- Audit_Log

### 💡 Constraints
- Primary Keys, Foreign Keys
- NOT NULL, UNIQUE, CHECK constraints

### 📚 Normalization
- Achieved up to 3rd Normal Form (3NF)

---

## 🔢 SQL Components

### 🛠️ Procedures
- InsertAttendance: Mark a student's presence

### 💡 Functions
- AvgExamScore: Calculate the average score for a student

### 👀 Cursors
- List students enrolled in a particular course

### 📦 Packages
- StudentManagement: Handle attendance and grade fetching

### 🚧 Triggers
- Block any DML operations during weekdays or public holidays
- Log user actions to an audit table

### 🔔 Auditing
- Audit_Log captures every INSERT, UPDATE, DELETE with timestamp and user details

---

## 📊 Sample Data (with Rwandan Names)

- Students: Mugisha Eric, Uwase Divine, Niyonsaba Claude
- Instructors: Ndahiro Jean, Umutoni Grace

Sample insertions were created using real-world use cases and Rwandan context.

---

## 💼 Tools Used

- Oracle Database 21c
- SQL Developer
- Database Modeler
- Lucidchart/Draw.io for ERD
- GitHub for version control

---

## 🌐 Future Enhancements

- Add biometric attendance integration
- SMS notifications for absentees
- Integration with Learning Management Systems (LMS)

---

## 📅 Timeline

- Phase I: Problem Definition ✔️
- Phase II: Business Process Modeling ✔️
- Phase III: Logical Design ✔️
- Phase IV: Database Creation ✔️
- Phase V: Data Insertion and Validation ✔️
- Phase VI: Procedures, Functions, Triggers, Packages ✔️
- Phase VII: Advanced Programming & Auditing ✔️
- Phase VIII: Final Documentation & Presentation ✔️

---

## 📄 License

This project is submitted as part of the Capstone Project for Database Development with PL/SQL, Academic Year 2024-2025, Adventist University of Central Africa (AUCA).

---

> "Whatever you do, work at it with all your heart, as working for the Lord, not for human masters." — Colossians 3:23

---

