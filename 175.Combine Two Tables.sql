#Create Table 

CREATE TABLE Person (
    personId INT ,
    lastName VARCHAR(20),
    firstName VARCHAR(20),
    PRIMARY KEY (personId) 
);

CREATE TABLE Address (
    addressId INT ,
    personID INT ,
    city VARCHAR(20) ,
    state VARCHAR(20) ,
    PRIMARY KEY (addressId)
);

#Insert values

INSERT INTO Person (personId , lastName , firstName)
VALUES (1, "Kandan" , "Mani")
VALUES (2,"Mitha" , "Madhu");

INSERT INTO Address (addressId , personId , city , state)
VALUES (1, 2 , "Chennai" , "TN")
VALUES (2, 3 , "Avadi" , "TN")

#select and join

SELECT
    p.firstName,
    p.lastName,
    a.city,
    a.state
FROM
    Person p
LEFT JOIN
    Address a
ON
    p.personID = a.personId ;
