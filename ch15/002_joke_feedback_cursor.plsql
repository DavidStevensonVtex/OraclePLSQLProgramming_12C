DECLARE
   CURSOR joke_feedback_cur
   IS
      SELECT j.name, r.laugh_volume, c.name
        FROM joke j, response r, comedian c
       WHERE j.joke_id = r.joke_id AND r.joker_id = c.joker_id;
BEGIN
   NULL;
END;
/