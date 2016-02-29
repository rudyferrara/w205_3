select procedure_id, procedure_name, variance(score) as score_variance from e_procedures
   group by procedure_id, procedure_name order by score_variance desc limit 10;

