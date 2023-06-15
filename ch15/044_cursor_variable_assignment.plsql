CREATE OR REPLACE PROCEDURE assign_curvar (
   old_curvar_in  IN     companycursor.curvar_type
 , new_curvar_out    OUT companycursor.curvar_type
)
IS
BEGIN
   new_curvar_out := old_curvar_in;
END;
/