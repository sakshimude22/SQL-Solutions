-- 1527. Patients With a Condition
select * from Patients
where conditions REGEXP '(^| )DIAB1';