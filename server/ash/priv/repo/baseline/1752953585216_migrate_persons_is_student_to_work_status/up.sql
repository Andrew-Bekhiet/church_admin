CREATE TABLE work_status (
  name TEXT NOT NULL PRIMARY KEY
);
INSERT INTO work_status (name) VALUES
  ('student'),
  ('employed'),
  ('unemployed'),
  ('retired');
ALTER TABLE persons ADD COLUMN work_status TEXT;
ALTER TABLE persons ADD FOREIGN KEY (work_status) REFERENCES work_status(name);
UPDATE persons SET work_status = 'student' WHERE is_student is true;
UPDATE persons SET work_status = 'employed' WHERE is_student is false;
