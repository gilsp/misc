set hive.cli.print.header=true;
set mapred.job.priority=HIGH;
set hive.exec.parallel=true;
--using the looping variable 
set display_date=${hiveconf:mm_dd};
--inserting new daily tables into master table 
insert
	into
		table
			gspiegel.temp select
				column1, sum(column2)
			from
				schema.source
			where 
				day < '${hiveconf:display_date}'
				and day >= date_sub(
					'${hiveconf:display_date}',
					30
				)
			group by column1;