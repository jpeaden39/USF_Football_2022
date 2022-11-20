CREATE TABLE usf_schedule
(
week_id INTEGER (4) , 
game_dt DATE NOT NULL,
opponet VARCHAR (100) NOT NULL ,
location VARCHAR (12) CHECK (location IN ('Home','Away', 'Neutral', 'Bye')),
result_f VARCHAR (1) CHECK (result_f IN ('W', 'L')),
PRIMARY KEY (week_id)
);
ALTER TABLE usf_schedule CHANGE `week_id` `week_id` INTEGER(4) COMMENT 'Week the game was played on the schedule';
ALTER TABLE usf_schedule CHANGE `game_dt` `game_dt` INTEGER(4) COMMENT 'Date of the game DD-MON-YYYY';
ALTER TABLE usf_schedule CHANGE `opponent` `opponent` INTEGER(4) COMMENT 'Name of the school USF is playing';
ALTER TABLE usf_schedule CHANGE `location` `location` INTEGER(4) COMMENT 'Home, Away, Neutral, or Bye';	
ALTER TABLE usf_schedule CHANGE `result_f` `result_f` INTEGER(4) COMMENT 'W(in) or L(ose)';
UPDATE usf_schedule SET result_f = 'L' WHERE week_id = 10;




CREATE TABLE usf_offense_stats_fact
(
week_id INTEGER (4), 
o_total_yards INTEGER (4),
o_pass_yards INTEGER (4),
o_pass_att INTEGER (4),
o_pass_comp INTEGER (4),
o_rush_yards INTEGER (4),
o_rush_att INTEGER (4),
o_turnovers INTEGER (4),
FOREIGN KEY (week_id) REFERENCES usf_schedule(week_id)
);
ALTER TABLE usf_offense_stats_fact CHANGE `week_id` `week_id` INTEGER(4) COMMENT 'Week the game was played on the schedule';
ALTER TABLE usf_offense_stats_fact CHANGE `o_total_yards` `o_total_yards` INTEGER(4) COMMENT 'USF total pass and run yards gained for the game';
ALTER TABLE usf_offense_stats_fact CHANGE `o_pass_yards` `o_pass_yards` INTEGER(4) COMMENT 'USF total pass yards gained for the game';
ALTER TABLE usf_offense_stats_fact CHANGE `o_pass_comp` `o_pass_comp` INTEGER(4) COMMENT 'USF total pass completions for the game';
ALTER TABLE usf_offense_stats_fact CHANGE `o_pass_att` `o_pass_att` INTEGER(4) COMMENT 'USF total pass attempts thrown for the game';
ALTER TABLE usf_offense_stats_fact CHANGE `o_rush_yards` `o_rush_yards` INTEGER(4) COMMENT 'USF total rush yards gained for the game';
ALTER TABLE usf_offense_stats_fact CHANGE `o_rush_att ` `o_rush_att ` INTEGER(4) COMMENT 'USF total rush attempts for the game';
ALTER TABLE usf_offense_stats_fact CHANGE `o_turnovers` `o_turnovers` INTEGER(4) COMMENT 'USF total turnovers given up for the game';

CREATE TABLE usf_defense_stats_facts_stats
(
week_id INTEGER (4),
d_tot_yards INTEGER (4),
d_pass_yards INTEGER (4),
d_pass_att INTEGER (4),
d_pass_comp INTEGER (4),
d_rush_yards INTEGER (4),
d_rush_att INTEGER (4),
d_turnover INTEGER (4),
FOREIGN KEY (week_id) REFERENCES usf_schedule(week_id)
); 
ALTER TABLE usf_defense_stats_facts_stats CHANGE `week_id ` `week_id` INTEGER(4) COMMENT 'USF total turnovers given up for the game';
ALTER TABLE usf_defense_stats_facts_stats CHANGE `d_tot_yards` `d_tot_yards` INTEGER(4) COMMENT 'USF total pass and run yards given up for the game';
ALTER TABLE usf_defense_stats_facts_stats CHANGE `d_pass_yards ` `d_pass_yards` INTEGER(4) COMMENT 'USF total pass yards given up for the game';
ALTER TABLE usf_defense_stats_facts_stats CHANGE `d_pass_att` `d_pass_att` INTEGER(4) COMMENT 'USF total pass attempts defended for the game';
ALTER TABLE usf_defense_stats_facts_stats CHANGE `d_pass_comp` `d_pass_comp` INTEGER(4) COMMENT 'USF total pass completions allowed for the game';
ALTER TABLE usf_defense_stats_facts_stats CHANGE `d_rush_yards` `d_rush_yards` INTEGER(4) COMMENT 'USF total rush yards allowed for the game';
ALTER TABLE usf_defense_stats_facts_stats CHANGE `d_rush_att` `d_rush_att` INTEGER(4) COMMENT 'USF total rush attempts defended for the game';
ALTER TABLE usf_defense_stats_facts_stats CHANGE `d_turnover` `d_turnover` INTEGER(4) COMMENT 'USF total turnovers forced for the game';
