ALTER TABLE my_contacts 
    ADD City varchar(255),
    ADD state char(2);


SELECT location, city, state
FROM my_contacts;

SELECT location, RIGHT(location,2) as state, 
    substring_index(location,",", 1)
    FROM my_contacts;


UPDATE my_contacts
    SET City = substring_index(location,",",1),
        State= RIGHT(location,2);

Alter table my_contacts
    Drop location;


Alter table my_contacts
    ADD ID int primary key auto_increment;

Alter table my_contacts
 Modify ID int  auto_increment first;

 
 Select interests
    from my_contacts;


Alter table my_contacts
 ADD i1 varchar(255),
 ADD   i2 varchar(255),
 ADD   i3 varchar(255);

 SELECT interests, substring_index(interests,",",1)
 from my_contacts;


UPDATE my_contacts
    SET i1= substring_index(interests,",",1);

SELECT interests, trim(substring(interests,char_length(i1)+2)) as bw
FROM my_contacts;


UPDATE my_contacts
    SET interests = trim(substring(interests,char_length(i1)+2));

UPDATE my_contacts
    SET i2= substring_index(interests,",",1);
    
UPDATE my_contacts
    SET interests = trim(substring(interests,char_length(i2)+2));

SELECT interests, i1, i2, i3
FROM my_contacts;

UPDATE my_contacts
    SET i3 = interests;
