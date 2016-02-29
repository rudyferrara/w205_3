create table e_survey_results as
  select provider_id, cast(HCAHPS_BASE_SCORE as double) as HCAHPS_BASE_SCORE
    from surveys_responses
    where cast(HCAHPS_BASE_SCORE as double) is not null ;
    
