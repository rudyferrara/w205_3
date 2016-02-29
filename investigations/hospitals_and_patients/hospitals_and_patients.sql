 create table 24_q as
 select h.provider_id, h.hospital_name, avg(p.score) as score,
       variance(p.score) as score_var, avg(hcahps_base_score) as hcahps_base_score
  from e_hospitals h, e_procedures p, e_survey_results s
  where h.provider_id=p.provider_id and h.provider_id=s.provider_id
  group by h.provider_id, h.hospital_name
   
   
  select corr(score, hcahps_base_score), corr(score_var, hcahps_base_score) from
   24_q;
   
