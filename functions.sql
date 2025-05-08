
-- functions.sql
CREATE OR REPLACE FUNCTION AvgExamScore(p_student_id IN NUMBER)
RETURN NUMBER
IS
    v_avg_score NUMBER;
BEGIN
    SELECT AVG(Exam_Scores)
    INTO v_avg_score
    FROM Grades
    WHERE Student_ID = p_student_id;

    RETURN v_avg_score;
END;
/
