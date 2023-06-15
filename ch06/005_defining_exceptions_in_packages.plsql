CREATE OR REPLACE PACKAGE errnums
IS
   en_too_young     CONSTANT NUMBER := -20001;
   exc_too_young exception;
   PRAGMA EXCEPTION_INIT (exc_too_young, -20001);

   en_sal_too_low   CONSTANT NUMBER := -20002;
   exc_sal_too_low exception;
   PRAGMA EXCEPTION_INIT (exc_sal_too_low, -20002);
END errnums;
/