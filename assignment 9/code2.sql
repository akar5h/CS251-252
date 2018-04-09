#!/bin/sqlite3
.open code1.sql
.mode csv
.import students.csv students
.import faculty.csv faculty
.import family.csv family 
