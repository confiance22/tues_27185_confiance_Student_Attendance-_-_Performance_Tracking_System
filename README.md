# 📚 Student Attendance and Performance Tracking System

---

## 📅 Project Details

- **Student Name**: Confiance UTITAMAHORO
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

Sample insertions were created using real-world use cases and Rwandan context.

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
The system identifies a core issue in academic institutions: unreliable and inefficient tracking of student attendance and performance. It defines clear objectives for building a PL/SQL-based system that ensures automation, accuracy, and transparency in handling student academic data.

- Phase II: Business Process Modeling ✔️
A detailed business process was designed to show how attendance and grading flow through the institution. Swimlane diagrams and BPMN modeling were used to represent how students, instructors, and administrators interact through the system, highlighting decision points and data flow.

- Phase III: Logical Design ✔️
Entity-Relationship Diagrams (ERDs) were created to define all entities and their relationships. Primary keys, foreign keys, and normalization (up to 3NF) were applied to remove redundancy. Data types and constraints were applied as per business rules.
  
- Phase IV: Database Creation ✔️
Tables were physically created in Oracle using SQL DDL scripts. Sequences were defined for ID generation. Indexes and integrity constraints were enforced to ensure consistent and valid data entry.

- Phase V: Data Insertion and Validation ✔️
Sample records with realistic Rwandan student and instructor names were inserted. Test data respected all constraints. Data was validated for consistency, and foreign key relationships were properly tested using both attendance and grades records.
  
- Phase VI: Procedures, Functions, Triggers, Packages ✔️
Custom PL/SQL components were developed:

Procedures: For automated data entry like attendance marking.

Functions: For analytics like calculating a student’s average score.

Cursors: For displaying lists of students per course.

Packages: To group logic in a modular way for better reuse.

Triggers: To block attendance changes on weekdays or public holidays.
All were tested with at least 5 valid inputs.
  
- Phase VII: Advanced Programming & Auditing ✔️
Security was improved using auditing triggers and logic. A dedicated Audit_Log table tracks user actions on sensitive tables. A separate Public_Holidays table is used by a trigger to prevent DML operations during holidays. This ensures regulatory and organizational compliance.
  
- Phase VIII: Final Documentation & Presentation ✔️
full README, ERD, data model, SQL scripts, test cases, and a PowerPoint presentation were created. All content was organized for GitHub submission. Presentation slides cover problem, solution, and outcomes clearly with visuals and explanation.

---

## 📄 License

This project is submitted as part of the Capstone Project for Database Development with PL/SQL, Academic Year 2024-2025, Adventist University of Central Africa (AUCA).

---

> "Whatever you do, work at it with all your heart, as working for the Lord, not for human masters." — Colossians 3:23

---

