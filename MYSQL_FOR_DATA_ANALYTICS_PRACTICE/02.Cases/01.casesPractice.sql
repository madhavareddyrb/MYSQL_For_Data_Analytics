-- CASE in sql like conditions in coding.--> Case to init and end to and case
use employees;
select * from employees;
-- simple case

select name,
case department
	when 'sales' then 'sales department'
    else 'other'
end as employee_name from employees;

-- simple case

select name,
CASE department
	when 'sales' then 'sales team'
    when 'hr' then 'hr team'
    else 'other'
end as employee_names from employees;

-- searched case not mentioing particular colun it will search

select name,
case
	when age < 30 then 'Young'
    when age <= 30 and age >= 40 then 'mid-age'
    else 'senior'
end as employee_name from employees;

-- nested cases

select name,
case
	when age < 30 then
    case
		when department = 'sales' then 'junior sales team'
        else 'junior'
	end
	when age >= 30 and age <= 40 then
    case
		when department = 'sales' then 'mid level sales team'
        else 'senior'
	end
end as employee_name from employees;

-- dealing with null department

select name,
case
	when department is null then 'no department assigned'
    else department
end as department_statues from employees;
        






