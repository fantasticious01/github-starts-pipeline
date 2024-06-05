SELECT
  d.date_month, 
  c.repo_id, 
  COUNT(*) AS count_commits, 
  lag(count_commits, 12) OVER (PARTITION BY c.repo_id ORDER BY d.date_month) AS last_year_count_commits, 
  count_commits / last_year_count_commits AS yoy_growth, 
FROM {{ ref('dim_date') }} AS d 
  LEFT JOIN {{ ref('fact_commits') }} AS c
  ON d.date_month = DATE_TRUNC('month', c.event_date)
GROUP BY 1, 2