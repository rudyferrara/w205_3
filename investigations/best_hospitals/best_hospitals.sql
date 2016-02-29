select h.provider_id, h.hospital_name, avg(p.score) as score
  from e_hospitals h, e_procedures p
  where h.provider_id=p.provider_id
  group by h.provider_id, h.hospital_name
  order by score desc limit 10;


