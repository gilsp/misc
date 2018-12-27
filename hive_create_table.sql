--creating table for first part of the loop 
set hive.cli.print.header=true;
set mapred.job.priority=HIGH;
set hive.exec.parallel=true;

DROP
	TABLE
		IF EXISTS gspiegel.temp;
USE gspiegel;
CREATE
	TABLE temp (column1 string, column2 string);