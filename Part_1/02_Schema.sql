-- db -> schema -> table -> rows

-- If not exists it is going to prevent an error if the schema is already existing
CREATE SCHEMA IF NOT EXISTS basics;

-- CREATE EXTENSION IF NOT EXISTS pgcrypto;

-- query

SELECT schema_name
FROM information_schema.schemata
ORDER BY schema_name;