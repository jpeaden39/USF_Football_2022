*/ Here I inserted the data for the usf schedule. What is being inserted is referenced in the ALTER TABLE comments. 
I used the data loads INSERT INTO and VALUES to input the data for each week/*

INSERT INTO usf_schedule(week_id,game_dt,opponet,location,result_f)
VALUES ('1', '2022-09-03','Brigham Young','Home','L');
INSERT INTO usf_schedule(week_id,game_dt,opponet,location,result_f)
VALUES ('2', '2022-09-10', 'Howard','Home','W');
INSERT INTO usf_schedule(week_id,game_dt,opponet,location,result_f)
VALUES ('3','2022-09-17','Florida','Away','L');
INSERT INTO usf_schedule(week_id,game_dt,opponet,location,result_f)
VALUES('4','2022-09-24','Louisville','Away','L');
INSERT INTO usf_schedule(week_id,game_dt,opponet,location,result_f)
VALUES('5','2022-10-01','East Carolina','Away','L');
INSERT INTO usf_schedule(week_id,game_dt,opponet,location,result_f)
VALUES('6','2022-10-08','Cinncinati','Away','L');
INSERT INTO usf_schedule(week_id,game_dt,opponet,location,result_f)
VALUES('7','2022-10-15','Tulane','Home','L');
INSERT INTO usf_schedule(week_id,game_dt,opponet,location,result_f)
VALUES('8','2022-10-29','Houston','Away','L');
INSERT INTO usf_schedule(week_id,game_dt,opponet,location,result_f)
VALUES('9','2022-11-05','Temple','Away','L');
INSERT INTO usf_schedule(week_id,game_dt,opponet,location,result_f)
VALUES('10','2022-11-12','Southern Methodist','Home',Null);
INSERT INTO usf_schedule(week_id,game_dt,opponet,location,result_f)
VALUES('11', '2022-11-18','Tulsa','Away',Null);
INSERT INTO usf_schedule(week_id,game_dt,opponet,location,result_f)
VALUES('12','2022-11-26','Central Florida','Home',Null);
UPDATE usf_schedule SET result_f = 'L' WHERE week_id = 10; /* Updating because game occured after creation of the table*/
UPDATE usf_schedule SET result_f = 'L' WHERE week_id = 11; 
 
 */ Here I used the same data loads to insert stats for the usf offensive stats. 
 
 INSERT INTO usf_offense_stats_fact(week_id,o_total_yards,o_pass_yards,o_pass_att,o_pass_comp,o_rush_yards,o_rush_att,o_turnovers)
 VALUES('1','279','172','30','17','107','27','1');
  INSERT INTO usf_offense_stats_fact(week_id,o_total_yards,o_pass_yards,o_pass_att,o_pass_comp,o_rush_yards,o_rush_att,o_turnovers)
  VALUES('2','424','219','28','17','205','27','1');
   INSERT INTO usf_offense_stats_fact(week_id,o_total_yards,o_pass_yards,o_pass_att,o_pass_comp,o_rush_yards,o_rush_att,o_turnovers)
  VALUES('3','402','116','28','12','286','46','3');
  INSERT INTO usf_offense_stats_fact(week_id,o_total_yards,o_pass_yards,o_pass_att,o_pass_comp,o_rush_yards,o_rush_att,o_turnovers)
  VALUES('4','158','110','28','13','48','35','3');
  INSERT INTO usf_offense_stats_fact(week_id,o_total_yards,o_pass_yards,o_pass_att,o_pass_comp,o_rush_yards,o_rush_att,o_turnovers)
  VALUES('5','455','253','28','18','202','36','1');
  INSERT INTO usf_offense_stats_fact(week_id,o_total_yards,o_pass_yards,o_pass_att,o_pass_comp,o_rush_yards,o_rush_att,o_turnovers)
  VALUES('6','363','139','21','11','224','43','0');
  INSERT INTO usf_offense_stats_fact(week_id,o_total_yards,o_pass_yards,o_pass_att,o_pass_comp,o_rush_yards,o_rush_att,o_turnovers)
  VALUES('7','377','259','23','14','118','28','2');
  INSERT INTO usf_offense_stats_fact(week_id,o_total_yards,o_pass_yards,o_pass_att,o_pass_comp,o_rush_yards,o_rush_att,o_turnovers)
  VALUES('8','429','275','34','24','154','31','0');
  INSERT INTO usf_offense_stats_fact(week_id,o_total_yards,o_pass_yards,o_pass_att,o_pass_comp,o_rush_yards,o_rush_att,o_turnovers)
  VALUES('9', '471','190','27','14','281','43','3');
INSERT INTO usf_offense_stats_fact(week_id,o_total_yards,o_pass_yards,o_pass_att,o_pass_comp,o_rush_yards,o_rush_att,o_turnovers)
VALUES('10', '381','202','34','14','179','42','1');
INSERT INTO  usf_offense_stats_fact(week_id,o_total_yards,o_pass_yards,o_pass_att,o_pass_comp,o_rush_yards,o_rush_att,o_turnovers)
VALUES ('11', '499','240','25','21','259','41','2');

 */ Here I used the same data loads to insert stats for the usf defensive stats/*.

INSERT INTO usf_defense_stats_facts_stats(week_id,d_tot_yards,d_pass_yards,d_pass_att,d_pass_comp,d_rush_yards,d_rush_att,d_turnover)
VALUES('1','573','261','32','25','312','37','1');
INSERT INTO usf_defense_stats_facts_stats(week_id,d_tot_yards,d_pass_yards,d_pass_att,d_pass_comp,d_rush_yards,d_rush_att,d_turnover)
VALUES('2','418','250','37','28','168','40','3');
INSERT INTO usf_defense_stats_facts_stats(week_id,d_tot_yards,d_pass_yards,d_pass_att,d_pass_comp,d_rush_yards,d_rush_att,d_turnover)
VALUES('3','329','112','18','10','217','30','2');
INSERT INTO usf_defense_stats_facts_stats(week_id,d_tot_yards,d_pass_yards,d_pass_att,d_pass_comp,d_rush_yards,d_rush_att,d_turnover)
VALUES('4','542','259','30','19','283','46','1');
INSERT INTO usf_defense_stats_facts_stats(week_id,d_tot_yards,d_pass_yards,d_pass_att,d_pass_comp,d_rush_yards,d_rush_att,d_turnover)
VALUES('5','575','465','41','31','110','30','1');
INSERT INTO usf_defense_stats_facts_stats(week_id,d_tot_yards,d_pass_yards,d_pass_att,d_pass_comp,d_rush_yards,d_rush_att,d_turnover)
VALUES('6','414','193','23','16','221','37','2');
INSERT INTO usf_defense_stats_facts_stats(week_id,d_tot_yards,d_pass_yards,d_pass_att,d_pass_comp,d_rush_yards,d_rush_att,d_turnover)
VALUES('7','564','329','36','23','235','51','1');
INSERT INTO usf_defense_stats_facts_stats(week_id,d_tot_yards,d_pass_yards,d_pass_att,d_pass_comp,d_rush_yards,d_rush_att,d_turnover)
VALUES('8','490','387','39','33','103','25','1');
INSERT INTO usf_defense_stats_facts_stats(week_id,d_tot_yards,d_pass_yards,d_pass_att,d_pass_comp,d_rush_yards,d_rush_att,d_turnover)
VALUES('9', '621','344','36','27','277','30','0');
INSERT INTO usf_defense_stats_facts_stats(week_id,d_tot_yards,d_pass_yards,d_pass_att,d_pass_comp,d_rush_yards,d_rush_att,d_turnover)
VALUES('10', '553','280','27','19','273','41','0');
INSERT INTO usf_defense_stats_facts_stats(week_id,d_tot_yards,d_pass_yards,d_pass_att,d_pass_comp,d_rush_yards,d_rush_att,d_turnover)
VALUES('11','573','302','27','20','271','46','0');

