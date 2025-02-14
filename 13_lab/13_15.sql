SELECT name AS procedure_name
    , SCHEMA_NAME(schema_id) AS schema_name
    , type_desc
    , create_date
    , modify_date
FROM sys.procedures

DROP PROCEDURE *
FROM [<stored procedure name>];
