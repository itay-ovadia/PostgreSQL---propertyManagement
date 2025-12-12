SELECT * FROM properties;
SELECT * FROM landlords;

INSERT INTO properties(propertyID,propertyName,sqMeter,bedrooms ,bathrooms) 
	VALUES 
	('64534redws','Apartment3',98,2,2),
	('251ecmnbvc','Apartment4',102,1,2),
	('mnbvcxdtyy','Apartment5',75,3,1),
	('asasdqwerf','Apartment6',104,4,4),
	('dvjukjyhvs','Apartment7',200,5,2);

ALTER TABLE landlords
ADD COLUMN propertyid VARCHAR(50);

ALTER TABLE properties
ADD CONSTRAINT positivesqmeter CHECK (sqmeter>0),
ADD CONSTRAINT positivebath CHECK (bathrooms>0),
ADD CONSTRAINT positivebed CHECK (bedrooms>0);

CREATE TABLE landlords(
landlordid VARCHAR(50) primary key,
landlordname VARCHAR(50),
landlordage FLOAT,
landlordbirthday DATE);

INSERT INTO landlords 
VALUES
	('nhgtrews3','landlord5', 28.5, '1997-01-01' ),
	('134rfdsvm','landlord6', 29.5, '1999-01-01' ),
	('098ujrffd','landlord7', 30.5, '2001-01-01' );
	

UPDATE landlords
SET propertyid= 'dvjukjyhvs'
WHERE landlordname = 'landlord4';

--join properties and landlords and display data sorted alphabetically by apartmentname
SELECT  p.propertyid, p.propertyname, p.sqmeter, p.bedrooms,p.bathrooms , l.landlordid, l.landlordname
FROM properties AS p
LEFT JOIN landlords as l ON l.propertyid = p.propertyid
ORDER BY p.propertyname 

--display total sqm of all properties
SELECT SUM(p.sqmeter) AS totalsqm
FROM properties AS p

 



