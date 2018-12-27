# you can either enter this line by line or run the code. If you run the code line by line do not include the comments 
DATE=2017-05-01
hive -f hive_create_table.sql 
# starting loop
for i in {0..240..30} 
do NEXT_DATE=$(date +%Y-%m-%d -d "$DATE+$i day")
echo querying "$NEXT_DATE"
#running query
hive -f hive_populate_table.sql -hiveconf mm_dd=$NEXT_DATE 
done