SELECT
      typname,
      typlen
FROM
      pg_type
WHERE
      typname ~ '^timestamp';
	  
CREATE TABLE timestamp_demo (ts TIMESTAMP, tstz TIMESTAMPTZ);
SET timezone = 'America/Los_Angeles';
SHOW TIMEZONE;