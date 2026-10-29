/*****
## Q Link: https://www.hackerrank.com/challenges/the-company/problem?isFullScreen=true

## Submission:
******/

Select
f.company_code
,f.founder founder_name
,count(distinct lm.lead_manager_code) #_lead_managers
,count(distinct sm.senior_manager_code) #_senior_managers
,count(distinct m.manager_code) #_managers
,count(distinct e.employee_code) #_employees
from
company f
left join
lead_manager LM
on
f.company_code = LM.company_code
left join
Senior_manager SM
on
(f.company_code = SM.company_code
)
left join
Manager M
on
(f.company_code = M.company_code

)
left join
employee e
on
(f.company_code = e.company_code

 )
group by 1,2
order by f.company_code
