select h.state, avg(p.score) as score
  from e_hospitals h, e_procedures p
  where h.provider_id=p.provider_id
  group by h.state
  order by score desc limit 10;

