create table insuranceDB(
id serial primary key,
age int,
sex varchar,
bmi int,
children int,
smoker varchar,
region varchar,
charges int
);


select * from insuranceDB


insert into insuranceDB (age, sex, bmi, children, smoker, region, charges)
values (19,'female',27.9,0,'yes','southwest',16884.924)


COPY 
insuranceDB (age,sex,bmi,children,smoker,region,charges)
FROM 'D:\DATA ANALYST 2025\SQL\insuranceDB.csv'
DELIMITER ','
CSV HEADER;

ALTER TABLE insuranceDB
ALTER COLUMN bmi TYPE REAL;

ALTER TABLE insuranceDB
ALTER COLUMN charges TYPE REAL;

COPY insuranceDB (age, sex, bmi, children, smoker, region, charges)
FROM 'D:\DATA ANALYST 2025\SQL\insuranceDB.csv'
DELIMITER ','
CSV HEADER;


select * from insuranceDB
