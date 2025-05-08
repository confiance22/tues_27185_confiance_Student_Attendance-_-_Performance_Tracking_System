
-- test_cases.sql

-- Run InsertAttendance procedure with 5 valid records
BEGIN
    InsertAttendance(1, 'CS101', TO_DATE('2025-04-28','YYYY-MM-DD'), 'Present');
    InsertAttendance(2, 'IS102', TO_DATE('2025-04-28','YYYY-MM-DD'), 'Present');
    InsertAttendance(3, 'CS101', TO_DATE('2025-04-28','YYYY-MM-DD'), 'Absent');
    InsertAttendance(4, 'IS102', TO_DATE('2025-04-28','YYYY-MM-DD'), 'Present');
    InsertAttendance(5, 'CS101', TO_DATE('2025-04-28','YYYY-MM-DD'), 'Present');
END;
/

-- Test AvgExamScore function
SELECT AvgExamScore(1) AS avg_score FROM DUAL;

-- Test Package procedures
BEGIN
    StudentManagement.MarkAttendance(1, 'CS101', TO_DATE('2025-04-29', 'YYYY-MM-DD'), 'Present');
END;
/

-- Test Package function
SET SERVEROUTPUT ON;
DECLARE
    v_grade CHAR(2);
BEGIN
    v_grade := StudentManagement.GetStudentGrade(1, 'CS101');
    DBMS_OUTPUT.PUT_LINE('Grade: ' || v_grade);
END;
/

-- TEST: Perform 2 UPDATE operations to be recorded in audit_log

BEGIN
    -- Update attendance record status for Attendance_ID = 1
    UPDATE Attendance
    SET Status = 'Absent'
    WHERE Attendance_ID = 1;

    -- Update attendance record status for Attendance_ID = 2
    UPDATE Attendance
    SET Status = 'Present'
    WHERE Attendance_ID = 2;
    
    COMMIT;
END;
/
