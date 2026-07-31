-- 3586. Find COVID Recovery Patients
-- # Write your MySQL query statement below
-- with first_positive as (
--     select patient_id,
--     min(test_date) as f_p
--     from covid_tests
--     where result = 'Positive'
--     group by patient_id
-- ),
-- first_neg_after_pos as (
--     select 
--     ct.patient_id,
--     fp.f_p,
--     min(ct.test_date) as f_n
--     from covid_tests ct
--     join first_positive fp
--     on ct.patient_id = fp.patient_id
--     where ct.result = 'Negative'
--     and ct.test_date > fp.f_p
--     group by ct.patient_id, fp.f_p
-- )
-- select 
-- fn.patient_id,
-- p.patient_name,
-- p.age,
-- DATEDIFF(fn.f_n, fn.f_p) as recovery_time
-- from first_neg_after_pos fn
-- join patients p
-- on p.patient_id = fn.patient_id
-- order by recovery_time, patient_name;

select c.patient_id, p.patient_name, p.age, datediff(min(c1.test_date), min(c.test_date))as recovery_time
from covid_tests c
inner join covid_tests c1 
on c.patient_id = c1.patient_id and c.test_date < c1.test_date and c.result = 'Positive' and c1.result = 'Negative'
inner join patients p on c.patient_id = p.patient_id
group by c.patient_id, p.patient_name, p.age
order by recovery_time, p.patient_name;