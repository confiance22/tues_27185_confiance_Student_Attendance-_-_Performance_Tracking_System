# 📚 Student Attendance and Performance Tracking System

---

## 📅 Project Details

- **Student Name**: Confiance UFITAMAHORO
- **Student ID**: 27185
- **Lecturer**: Eric Maniraguha
- **Course Code & Name**: INSY 8311 - Database Development with PL/SQL
- **Academic Year**: 2024-2025

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

---

## 📊 Sample Data (with Rwandan Names)

- Students: Mugisha Eric, Uwase Divine, Niyonsaba Claude
- Instructors: Ndahiro Jean, Umutoni Grace


---

## 💼 Tools Used

- Oracle Database 21c
- SQL Developer
- Database Modeler
- GitHub for version control

---

## 🌐 Future Enhancements

- Add biometric attendance integration
- SMS notifications for absentees
- Integration with Learning Management Systems (LMS)

---

## 📅 Timeline

- Phase I: Problem Definition ✔️
- The system identifies a core issue in academic institutions: unreliable and inefficient tracking of student attendance and performance. It defines clear objectives for building a PL/SQL-based system that ensures automation, accuracy, and transparency in handling student academic data.

- Phase II: Business Process Modeling ✔️
- A detailed business process was designed to show how attendance and grading flow through the institution. Swimlane diagrams and BPMN modeling were used to represent how students, instructors, and administrators interact through the system, highlighting decision points and data flow.
### 1. Student Attendance Workflow
- Instructor logs in
- Selects course and date
- Marks each student as Present/Absent
- Data inserted into `Attendance` table
- PL/SQL used: `InsertAttendance`, `MarkAttendance`

### 2. Grade Submission Workflow
- Instructor inputs exam scores
- System saves score and grade into `Grades` table
- Average calculated via `AvgExamScore`
- PL/SQL used: `GetStudentGrade`, trigger audit logs

### 3. Diagrams
- DFD and Activity Diagrams attached in `/diagrams` folder


- Phase III: Logical Design ✔️
- Entity-Relationship Diagrams (ERDs) were created to define all entities and their relationships. Primary keys, foreign keys, and normalization (up to 3NF) were applied to remove redundancy. Data types and constraints were applied as per business rules.
 ![ERD 1](https://github.com/user-attachments/assets/a756e812-8d81-47f8-beec-bb185f688e12)

- Phase IV: Database Creation ✔️
- Tables were physically created in Oracle using SQL DDL scripts. Sequences were defined for ID generation. Indexes and integrity constraints were enforced to ensure consistent and valid data entry.
![CREATING PDB](https://github.com/user-attachments/assets/de0677b5-19e6-47b9-812a-be2eb40f9d67)

- Phase V: Data Insertion and Validation ✔️
Sample records with realistic Rwandan student and instructor names were inserted. Test data respected all constraints. Data was validated for consistency, and foreign key relationships were properly tested using both attendance and grades records.
![INSERT INTO INSTRUCTORS](https://github.com/user-attachments/assets/279417d8-37c7-423f-bc45-fb54d69c0ace)

- Phase VI: Procedures, Functions, Triggers, Packages ✔️
Custom PL/SQL components were developed:
Procedures: For automated data entry like attendance marking.
Functions: For analytics like calculating a student’s average score.
Cursors: For displaying lists of students per course.
Packages: To group logic in a modular way for better reuse.
Triggers: To block attendance changes on weekdays or public holidays.
All were tested with at least 5 valid inputs.
  
- Phase VII: Programming & Auditing ✔️
- Security was improved using auditing triggers and logic. A dedicated Audit_Log table tracks user actions on sensitive tables. A separate Public_Holidays table is used by a trigger to prevent DML operations during holidays. This ensures regulatory and organizational compliance.
  
- Phase VIII: Final Documentation & Presentation ✔️
- [tue_27185_confiance_plsql2.pptx](https://github.com/user-attachments/files/20105090/tue_27185_confiance_plsql2.pptx)

---

## 📄 License

This project is submitted as part of the Capstone Project for Database Development with PL/SQL, Academic Year 2024-2025, Adventist University of Central Africa (AUCA).

---

> "Whatever you do, work at it with all your heart, as working for the Lord, not for human masters." — Colossians 3:23

---

