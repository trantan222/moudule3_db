use student_management;
select * 
from student;
select * 
from class;
select * 
from mark;
select * 
from subjects;

select st.student_id,st.student_name,c.class_id,c.class_name
from student st 
join class c
on st.class_id = c.class_id;
 -- SELECT *
-- FROM Student
-- WHERE Status = true;

select *
from subjects
where credit < 10;

select st.student_id,st.student_name,c.class_id,c.class_name
from student st
join class c
on st.class_id = c.class_id
where c.class_id = 1;

select *
from subjects
join mark
on subjects.sub_id = mark.sub_id
where subjects.sub_id = 1;

select address,count(student_id) as so_luong_hoc_vien
from student 
group by address;

select student.student_id,student.student_name , avg(mark) as diem_tb
from student 
join mark
on student.student_id = mark.student_id
group by student.student_id
having avg(mark) >= all (select avg(mark) from mark group by mark.student_id);

select * 
from subjects
where credit >= all (select credit from subjects);

-- select *
-- from subjects
-- join mark
-- on subjects.sub_id = mark.sub_id
-- order by mark desc
-- limit 1;

select *,mark 
from subjects
join mark on subjects.sub_id = mark.sub_id
where mark = (select max(mark) from mark);


SELECT 
    student.student_id, student.student_name, AVG(mark.mark)
FROM
    student
        JOIN
    mark ON student.student_id = mark.student_id
GROUP BY student.student_id
ORDER BY AVG(mark.mark) DESC;


-- group by sb.sub_id
-- having max(mark) >= all (select max(mark) from mark group by mark.sub_id);
