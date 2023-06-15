DECLARE
   CURSOR fall_jobs_cur
   IS
          SELECT task, expected_hours, tools_required, do_it_yourself_flag
            FROM winterize
           WHERE year_of_task = TO_NUMBER (TO_CHAR (SYSDATE, 'YYYY'))
                 AND completed_flag = 'NOTYET'
      FOR UPDATE ;

   job_rec   fall_jobs_cur%ROWTYPE;
BEGIN
   OPEN fall_jobs_cur;

   LOOP
      FETCH fall_jobs_cur
      INTO job_rec;

      EXIT WHEN fall_jobs_cur%NOTFOUND;

      IF job_rec.do_it_yourself_flag = 'YOUCANDOIT'
      THEN
         UPDATE winterize
            SET responsible = 'STEVEN'
          WHERE CURRENT OF fall_jobs_cur;

         COMMIT;
         EXIT;
      END IF;
   END LOOP;

   CLOSE fall_jobs_cur;
END;
/