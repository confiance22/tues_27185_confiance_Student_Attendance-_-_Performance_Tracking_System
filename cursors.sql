
-- cursors.sql
SET SERVEROUTPUT ON;

DECLARE
    CURSOR student_cursor (p_course_code VARCHAR2) IS
        SELECT s.Name
        FROM Students s
        JOIN Attendance a ON s.Student_ID = a.Student_ID
        WHERE a.Course_Code = p_course_code;

    v_name Students.Name%TYPE;
BEGIN
    OPEN student_cursor('CS101');
    LOOP
        FETCH student_cursor INTO v_name;
        EXIT WHEN student_cursor%NOTFOUND;
        DBMS_OUTPUT.PUT_LINE('Student Name: ' || v_name);
    END LOOP;
    CLOSE student_cursor;
END;
/
