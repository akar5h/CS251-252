CREATE TABLE Students(
	Name TEXT NOT NULL,
	Roll_Number INTEGER NOT NULL,
	UGorPG TEXT NOT NULL,
	Dept TEXT NOT NULL,
	Adderess TEXT NOT NULL,
	Phone_Number INTEGER,
	Advisor TEXT	
);

CREATE TABLE Faculty_Staff (
	Name TEXT NOT NULL,
	Unique_id INTEGER NOT NULL,
	Dept TEXT NOT NULL,
	Adderess TEXT NOT NULL,
	Phone_Number INTEGER
);

CREATE TABLE department(
	Name TEXT NOT NULL,
	Head TEXT NOT NULL
);

CREATE TABLE family (
	Name TEXT NOT NULL,
	Adderess TEXT NOT NULL,
	Phone_Number INTEGER,
	Core_Family Member TEXT NOT NULL, 
    Core_Family2 Member TEXT ,
	Relation TEXT NOT NULL,
	FOREIGN KEY (Core_Family) REFERENCES Faculty_Staff(Name)
); 		