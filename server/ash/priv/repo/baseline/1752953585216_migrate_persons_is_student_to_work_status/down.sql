UPDATE persons
SET
    is_student = CASE
        WHEN work_status = 'student' THEN true
        WHEN work_status = 'employed' THEN false
        ELSE is_student
    END;

ALTER TABLE persons
DROP COLUMN work_status;

DROP TABLE work_status;
