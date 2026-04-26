-- using my sql
DELETE FROM Person
WHERE id not in (
    select id from(
        select min(id) as id
        from person 
        group by email
    )as temp
);