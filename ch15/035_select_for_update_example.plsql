DECLARE
   CURSOR toys_cur
   IS
          SELECT name, manufacturer, preference_level, sell_at_yardsale_flag
            FROM my_sons_collection
           WHERE hours_used = 0
      FOR UPDATE ;

   CURSOR fall_jobs_cur
   IS
          SELECT task, expected_hours, tools_required, do_it_yourself_flag
            FROM winterize
           WHERE year_of_task = TO_CHAR (SYSDATE, 'YYYY')
      FOR UPDATE OF task;

   CURSOR fall_jobs_cur2
   IS
          SELECT w.task
               , w.expected_hours
               , w.tools_required
               , w.do_it_yourself_flag
            FROM winterize w, husband_config hc
           WHERE w.year_of_task = TO_CHAR (SYSDATE, 'YYYY')
                 AND w.task_id = hc.task_id
      FOR UPDATE OF hc.max_procrastination_allowed;
BEGIN
   NULL;
END;
/