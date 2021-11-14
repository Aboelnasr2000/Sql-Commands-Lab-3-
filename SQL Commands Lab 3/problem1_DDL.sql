 CREATE DATABASE Company;
 CREATE TABLE Employee(SSN int PRIMARY KEY , Fname varchar(20) , Lname varchar(20) , Bdate date , address text(40) , Price Float(30) , gender char(20) , salary float(20) , Dno int );
 CREATE TABLE Department(Dnumber int PRIMARY KEY AUTO_INCREMENT, Dname varchar(20) , mgr_SSN int , mgr_start_date date  );
  CREATE TABLE Project(Pnumber int PRIMARY KEY AUTO_INCREMENT , Pname varchar(20) , Plocation text(40) ,Dno int );
  ALTER TABLE employee ADD FOREIGN KEY (Dno) REFERENCES department (Dnumber) ON DELETE RESTRICT ON UPDATE CASCADE ; 
  ALTER TABLE project ADD FOREIGN KEY (Dno) REFERENCES department (Dnumber) ON DELETE RESTRICT ON UPDATE CASCADE ; 
  ALTER TABLE department ADD FOREIGN KEY (mgr_ssn) REFERENCES employee (ssn) ON DELETE RESTRICT ON UPDATE CASCADE ; 