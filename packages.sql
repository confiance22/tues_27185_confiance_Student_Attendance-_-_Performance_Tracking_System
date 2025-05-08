
-- packages.sql

CREATE OR REPLACE PACKAGE StudentManagement AS
    PROCEDURE MarkAttendance(p_student_id NUMBER, p_course_code VARCHAR2, p_date DATE, p_status VARCHAR2);
    FUNCTION GetStudentGrade(p_student_id NUMBER, p_course_code VARCHAR2) RETURN CHAR;
END StudentManagement;
/

CREATE OR REPLACE PACKAGE BODY StudentManagement AS
    PROCEDURE MarkAttendance(p_student_id NUMBER, p_course_code VARCHAR2, p_date DATE, p_status VARCHAR2) IS
    BEGIN
        INSERT INTO Attendance (Attendance_ID, Student_ID, Course_Code, Attendance_Date, Status)
        VALUES (Attendance_SEQ.NEXTVAL, p_student_id, p_course_code, p_date, p_status);
    EXCEPTION
        WHEN OTHERS THEN
            DBMS_OUTPUT.PUT_LINE('Error in MarkAttendance: ' || SQLERRM);
    END;


    FUNCTION GetStudentGrade(p_student_id NUMBER, p_course_code VARCHAR2) RETURN CHAR IS
        v_grade CHAR(2);
    BEGIN
        SELECT Final_Grade INTO v_grade
        FROM Grades
        WHERE Student_ID = p_student_id AND Course_Code = p_course_code;
        RETURN v_grade;
    EXCEPTION
        WHEN NO_DATA_FOUND THEN
            RETURN NULL;
        WHEN OTHERS THEN
            DBMS_OUTPUT.PUT_LINE('Error in GetStudentGrade: ' || SQLERRM);
            RETURN NULL;
    END;
END StudentManagement;
/
