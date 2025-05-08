

-- procedures.sql
CREATE OR REPLACE PROCEDURE InsertAttendance (
    p_student_id IN NUMBER,
    p_course_code IN VARCHAR2,
    p_date IN DATE,
    p_status IN VARCHAR2
) 
IS
BEGIN
    INSERT INTO Attendance (Attendance_ID, Student_ID, Course_Code, Attendance_Date, Status)
    VALUES (Attendance_SEQ.NEXTVAL, p_student_id, p_course_code, p_date, p_status);
EXCEPTION
    WHEN OTHERS THEN
        DBMS_OUTPUT.PUT_LINE('Error inserting attendance: ' || SQLERRM);
END;
/
