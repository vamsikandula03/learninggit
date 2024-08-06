use trainingdb;
select * from employee;
update employee set salary=salary+10000 where name='swaroop';
select * from employee;
Create table Address(address varchar(30) primary key,state varchar(30));
insert into Address values("tiruthani","tamilnadu");
insert into Address values("vizag","Andhra pradesh");
insert into Address values("tenali","Andhra pradesh");
insert into Address values("kurnool","Andhra pradesh");

select * from Address;
delete from employee;
drop table Address;
ALTER TABLE employee ADD FOREIGN KEY employee(address) REFERENCES Address(address);
select * from employee e,address a where e.address=a.address;
select name,empno,salary,state,address from employee e inner join Address a using(address);
