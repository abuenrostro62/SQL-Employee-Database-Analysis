-- Exported from QuickDBD: https://www.quickdatabasediagrams.com/
-- NOTE! If you have used non-SQL datatypes in your design, you will have to change these here.


CREATE TABLE "Departments" (
    "Dept_no" varchar(50)   NOT NULL,
    "Dept_name" varchar(50)   NOT NULL
);

CREATE TABLE "Dept_emp" (
    "Emp_no" int   NOT NULL,
    "Dept_no" varchar(50)   NOT NULL,
    "From_date" date   NOT NULL,
    "To_date" date   NOT NULL
);

CREATE TABLE "Dept_Manager" (
    "Dept_no" varchar(50)   NOT NULL,
    "Emp_no" int   NOT NULL,
    "To_date" date   NOT NULL,
    "From_date" date   NOT NULL
);

CREATE TABLE "Employees" (
    "Emp_no" int   NOT NULL,
    "Gender" varchar(10)   NOT NULL,
    "Birth_date" date   NOT NULL,
    "First_name" varchar(50)   NOT NULL,
    "Last_name" varchar(50)   NOT NULL,
    "Hire_date" date   NOT NULL,
    CONSTRAINT "pk_Employees" PRIMARY KEY (
        "Emp_no"
     )
);

CREATE TABLE "Salaries" (
    "Emp_no" int   NOT NULL,
    "Salary" float   NOT NULL,
    "To_date" date   NOT NULL,
    "From_date" date   NOT NULL
);

CREATE TABLE "Titles" (
    "Emp_no" int   NOT NULL,
    "To_date" date   NOT NULL,
    "From_date" date   NOT NULL,
    "Title" varchar(50)   NOT NULL
);

ALTER TABLE "Departments" ADD CONSTRAINT "fk_Departments_Dept_no" FOREIGN KEY("Dept_no")
REFERENCES "Dept_Manager" ("Dept_no");

ALTER TABLE "Dept_emp" ADD CONSTRAINT "fk_Dept_emp_Emp_no" FOREIGN KEY("Emp_no")
REFERENCES "Titles" ("Emp_no");

ALTER TABLE "Dept_emp" ADD CONSTRAINT "fk_Dept_emp_Dept_no" FOREIGN KEY("Dept_no")
REFERENCES "Dept_Manager" ("Dept_no");

ALTER TABLE "Dept_Manager" ADD CONSTRAINT "fk_Dept_Manager_Emp_no" FOREIGN KEY("Emp_no")
REFERENCES "Dept_emp" ("Emp_no");

ALTER TABLE "Employees" ADD CONSTRAINT "fk_Employees_Emp_no" FOREIGN KEY("Emp_no")
REFERENCES "Dept_Manager" ("Emp_no");

ALTER TABLE "Titles" ADD CONSTRAINT "fk_Titles_Emp_no" FOREIGN KEY("Emp_no")
REFERENCES "Salaries" ("Emp_no");

