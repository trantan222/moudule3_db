create database QuanLySinhVien;
use QuanLySinhVien;
create table class(
ClassID int not null auto_increment primary key,
ClassName varchar(60) not null,
StartDate datetime not null,
Statuss bit
 );
create table student
(
StudentID int not null auto_increment primary key,
StudentName varchar(60) not null,
Address varchar(50),
Phone varchar(20),
Statuss bit,
ClassID int not null,
foreign key (ClassID) references class(ClassID)
 );
CREATE TABLE Subject
(
    SubId   INT         NOT NULL AUTO_INCREMENT PRIMARY KEY,
    SubName VARCHAR(30) NOT NULL,
    Credit  TINYINT     NOT NULL DEFAULT 1 CHECK ( Credit >= 1 ),
    Status  BIT                  DEFAULT 1
);
CREATE TABLE Mark
(
    MarkId    INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    SubId     INT NOT NULL,
    StudentId INT NOT NULL,
    Mark      FLOAT   DEFAULT 0 CHECK ( Mark BETWEEN 0 AND 100),
    ExamTimes TINYINT DEFAULT 1,
    UNIQUE (SubId, StudentId),
    FOREIGN KEY (SubId) REFERENCES Subject (SubId),
    FOREIGN KEY (StudentId) REFERENCES Student (StudentId)
);
INSERT INTO class
VALUES (1, 'A1', '2008-12-20', 1),
		(2, 'A2', '2008-12-22', 1),
		(3, 'B3', current_date, 0);
select * from class;
INSERT INTO student (StudentName, Address, Phone, Statuss, ClassId)
VALUES ('Hung', 'Ha Noi', '0912113113', 1, 1);
INSERT INTO student (StudentName, Address, Statuss, ClassId)
VALUES ('Hoa', 'Hai phong', 1, 1);
INSERT INTO student (StudentName, Address, Phone, Statuss, ClassId)
VALUES ('Manh', 'HCM', '0123123123', 0, 2);
INSERT INTO Subject
VALUES (1, 'CF', 5, 1),
       (2, 'C', 6, 1),
       (3, 'HDJ', 5, 1),
       (4, 'RDBMS', 10, 1);
INSERT INTO Mark (SubId, StudentId, Mark, ExamTimes)
VALUES (1, 1, 8, 1),
       (1, 2, 10, 2),
       (2, 1, 12, 1);
select * from student;       
select * from student
where statuss = true;
select * from Subject
where Credit < 10;
select * from student join class using(ClassID)
where ClassID = 1;
 select * from Subject 
 where  SubName like "CF";    
 
select * from student
where StudentName like 'h%'; 
select * from class 
where month('2008-12-1') and Statuss = 1;

select * from Subject 
where credit in (3,5);


update student 
join class using(classId) 
set classId = 2
where student.StudentName = 'Hung';

select * from class join student using(classId);

select st.StudentName,m.Mark,s.SubName
from student st
join Mark m using (StudentId)
join Subject s using(SubId)
order by m.Mark desc,st.StudentName;

select * 
from subjects
where credit >= all (select credit from subjects);
 
 select *,mark 
from subjects
join mark on subjects.sub_id = mark.sub_id
where mark = (select max(mark) from mark);

select student.student_id,student.student_name ,avg(mark.mark)
from student 
join mark
on student.student_id = mark.student_id
group by student.student_id
order by avg(mark.mark) desc;