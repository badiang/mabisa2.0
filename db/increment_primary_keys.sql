-- used when merging two versions of a database with same structure, and conflicting primary keys
UPDATE maintenance_area_indicators 
SET keyctr = keyctr + 100;

UPDATE maintenance_area_mininumreqs 
SET keyctr = keyctr + 100, 
    indicator_keyctr = indicator_keyctr + 100;

UPDATE maintenance_criteria_setup 
SET keyctr = keyctr + 100, 
    indicator_keyctr = indicator_keyctr + 100, 
    minreqs_keyctr = minreqs_keyctr + 100;
