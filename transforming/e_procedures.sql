create table e_procedures as 
  select provider_id, measure_id as procedure_id,
    measure_name as procedure_name, cast(score as double) as score from effective_care
    where cast(score as double) is not null;


