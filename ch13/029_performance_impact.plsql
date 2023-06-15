SELECT falls_name
FROM waterfalls
WHERE INSTR(UPPER(falls_directions), 'MACKINAC BRIDGE') <> 0 ;