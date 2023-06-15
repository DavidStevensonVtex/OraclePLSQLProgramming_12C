column parameter format a30
column value format a30
set linesize 150
SELECT * FROM V$NLS_PARAMETERS ;

-- PARAMETER                      VALUE                              CON_ID
-- ------------------------------ ------------------------------ ----------
-- NLS_LANGUAGE                   AMERICAN                                1
-- NLS_TERRITORY                  AMERICA                                 1
-- NLS_CURRENCY                   $                                       1
-- NLS_ISO_CURRENCY               AMERICA                                 1
-- NLS_NUMERIC_CHARACTERS         .,                                      1
-- NLS_CALENDAR                   GREGORIAN                               1
-- NLS_DATE_FORMAT                DD-MON-RR                               1
-- NLS_DATE_LANGUAGE              AMERICAN                                1
-- NLS_CHARACTERSET               AL32UTF8                                1
-- NLS_SORT                       BINARY                                  1
-- NLS_TIME_FORMAT                HH.MI.SSXFF AM                          1
-- NLS_TIMESTAMP_FORMAT           DD-MON-RR HH.MI.SSXFF AM                1
-- NLS_TIME_TZ_FORMAT             HH.MI.SSXFF AM TZR                      1
-- NLS_TIMESTAMP_TZ_FORMAT        DD-MON-RR HH.MI.SSXFF AM TZR            1
-- NLS_DUAL_CURRENCY              $                                       1
-- NLS_NCHAR_CHARACTERSET         AL16UTF16                               1
-- NLS_COMP                       BINARY                                  1
-- NLS_LENGTH_SEMANTICS           BYTE                                    1
-- NLS_NCHAR_CONV_EXCP            FALSE                                   1

-- 19 rows selected.