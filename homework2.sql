
create table Students(
	StudentsId int not null primary key,
	StudentsName varchar(255)
)
 
create table Subjects(
	SubjectsId int not null primary key,
	SubjectsName varchar(255)
)
drop table Grades 
create table Grades(
	StudentsId int not null foreign key references Students(StudentsId),
	SubjectsId int not null foreign key references Subjects(SubjectsId),
	grade int not null primary key 
)

create table Bench(
	BenchId int not null primary key,
	BenchNumber int not null
)

create table Seat(
	SeatId int not null primary key,
	SeatNumber int not null
)
drop table Relation 
create table Relation(
	BenchId int not null foreign key references Bench(BenchId),
	SubjectsId int not null foreign key references Subjects(SubjectsId),
	RelationNumber int not null primary key
)

insert into Students(StudentsId,StudentsName) values(1,'Andrei')
insert into Students(StudentsId,StudentsName) values(2,'Tudor')
insert into Students(StudentsId,StudentsName) values(3,'Alex')
insert into Students(StudentsId,StudentsName) values(4,'Bogdan')


insert into Subjects(SubjectsId,SubjectsName) values(11,'Math')
insert into Subjects(SubjectsId,SubjectsName) values(12,'Literature')
insert into Subjects(SubjectsId,SubjectsName) values(13,'Chemistry')

insert into Grades(StudentsId,SubjectsId,grade) values(1,11,10)
insert into Grades(StudentsId,SubjectsId,grade) values(2,12,7)
insert into Grades(StudentsId,SubjectsId,grade) values(1,12,8)
insert into Grades(StudentsId,SubjectsId,grade) values(3,13,9)

insert into Bench(BenchId,BenchNumber) values(21,1000)
insert into Bench(BenchId,BenchNumber) values(31,1010)
insert into Bench(BenchId,BenchNumber) values(41,1050)
insert into Bench(BenchId,BenchNumber) values(51,1020)

insert into  Seat(SeatId,SeatNumber) values(101,60)
insert into  Seat(SeatId,SeatNumber) values(102,61)
insert into  Seat(SeatId,SeatNumber) values(103,62)
insert into  Seat(SeatId,SeatNumber) values(104,63)

insert into Relation(BenchId,SubjectsId,RelationNumber) values(21,11,10)
insert into Relation(BenchId,SubjectsId,RelationNumber) values(31,12,15)
insert into Relation(BenchId,SubjectsId,RelationNumber) values(41,13,23)

select R.RelationNumber,G.grade
from Relation R
left join Grades G on G.SubjectsId= R.SubjectsId

select * from Relation
select * from Grades 