-- *** CREATE TABLES ***
-- create member_type table
CREATE TABLE member_type (
	id 	  INT 	      NOT NULL,
	type  VARCHAR(50) NOT NULL,
	PRIMARY KEY (id)
);

-- create member table
CREATE TABLE member (
	id 	   		INT 	    	NOT NULL,
	first  		VARCHAR(100) 	NOT NULL,
	last   		VARCHAR(100) 	NOT NULL,
	email  		VARCHAR(100) 	NOT NULL,
	phone  		VARCHAR(20)		NOT NULL,
	due_paying 	BOOLEAN 	 	NOT NULL,
	competitive BOOLEAN 		NOT NULL,
	type 		INT				NOT NULL,
	PRIMARY KEY (id),
	CONSTRAINT fk_member_type
      FOREIGN KEY(type) 
	  REFERENCES member_type(id)
);


-- *** POPULATE DATA ***
-- populate member types
INSERT INTO member_type (id, type)
VALUES (0, 'member');

INSERT INTO member_type (id, type)
VALUES (1, 'trip_leader');

INSERT INTO member_type (id, type)
VALUES (2, 'club_leader');