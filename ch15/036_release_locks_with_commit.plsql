DECLARE
   /* All the jobs in the Fall to prepare for the Winter */
   CURSOR fall_jobs_cur
   IS
      SELECT task, expected_hours, tools_required, do_it_yourself_flag
        FROM winterize
       WHERE year_of_task = TO_NUMBER (TO_CHAR (SYSDATE, 'YYYY'))
             AND completed_flag = 'NOTYET' FOR UPDATE;
BEGIN
   /* For each job fetched by the cursor... */
   FOR job_rec IN fall_jobs_cur
   LOOP
      IF job_rec.do_it_yourself_flag = 'YOUCANDOIT'
      THEN
         /*
         || I have found my next job. Assign it to myself (like someone
         || else is going to do it!) and then commit the changes.
         */
         UPDATE winterize
            SET responsible = 'STEVEN'
          WHERE task = job_rec.task
                AND year_of_task = TO_NUMBER (TO_CHAR (SYSDATE, 'YYYY'));

         COMMIT;
         -- Note: You cannot execute another FETCH against a FOR UPDATE cursor after a COMMIT or ROLLBACK.
         -- Should there be an EXIT here?
      END IF;
   END LOOP;
END;
/