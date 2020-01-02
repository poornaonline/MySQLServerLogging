# Changing argument column from BLOB to LONGTEXT
ALTER TABLE `mysql`.`general_log` CHANGE COLUMN `argument` `argument` LONGTEXT NOT NULL ;

# Enable logging
SET global general_log = 1;
SET global log_output = 'table';

# See all the logs
select * from mysql.general_log;

# Disable logging
SET global general_log = 0;


