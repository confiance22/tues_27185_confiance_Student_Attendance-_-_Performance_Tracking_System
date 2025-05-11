
------triggers.sql-------
CREATE OR REPLACE TRIGGER Block_Weekday_And_Holiday_Changes
BEFORE INSERT OR UPDATE OR DELETE ON Attendance
FOR EACH ROW
DECLARE
    v_count NUMBER;
BEGIN
    IF TO_CHAR(SYSDATE, 'DY', 'NLS_DATE_LANGUAGE=ENGLISH') IN ('MON', 'TUE', 'WED', 'THU', 'FRI') THEN
        RAISE_APPLICATION_ERROR(-20001, 'DML operations are not allowed during weekdays.');
    END IF;

    SELECT COUNT(*) INTO v_count
    FROM Public_Holidays
    WHERE Holiday_Date = TRUNC(SYSDATE);

    IF v_count > 0 THEN
        RAISE_APPLICATION_ERROR(-20002, 'DML operations are not allowed on public holidays.');
    END IF;
END;
/

CREATE OR REPLACE TRIGGER trg_audit_attendance
AFTER INSERT OR UPDATE OR DELETE ON Attendance
FOR EACH ROW
DECLARE
    v_old_value CLOB;
    v_new_value CLOB;
BEGIN
    IF INSERTING THEN
        v_new_value := 'Student_ID: ' || :NEW.Student_ID || ', Course_Code: ' || :NEW.Course_Code || ', Attendance_Date: ' || :NEW.Attendance_Date || ', Status: ' || :NEW.Status;
        INSERT INTO audit_log (Table_Name, Operation, Changed_By, New_Value)
        VALUES ('Attendance', 'INSERT', USER, v_new_value);
    ELSIF UPDATING THEN
        v_old_value := 'Student_ID: ' || :OLD.Student_ID || ', Course_Code: ' || :OLD.Course_Code || ', Attendance_Date: ' || :OLD.Attendance_Date || ', Status: ' || :OLD.Status;
        v_new_value := 'Student_ID: ' || :NEW.Student_ID || ', Course_Code: ' || :NEW.Course_Code || ', Attendance_Date: ' || :NEW.Attendance_Date || ', Status: ' || :NEW.Status;
        INSERT INTO audit_log (Table_Name, Operation, Changed_By, Old_Value, New_Value)
        VALUES ('Attendance', 'UPDATE', USER, v_old_value, v_new_value);
    ELSIF DELETING THEN
        v_old_value := 'Student_ID: ' || :OLD.Student_ID || ', Course_Code: ' || :OLD.Course_Code || ', Attendance_Date: ' || :OLD.Attendance_Date || ', Status: ' || :OLD.Status;
        INSERT INTO audit_log (Table_Name, Operation, Changed_By, Old_Value)
        VALUES ('Attendance', 'DELETE', USER, v_old_value);
    END IF;
END;
/
