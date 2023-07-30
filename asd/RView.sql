select * from dbo.EmployeeSchedule2 where CreatedBy = 'MDJ'
order by EffectiveDate

select es.ID, t.ID, t.StartDate, es.EffectiveDate from dbo.Timesheet t
inner join dbo.EmployeeSchedule es
on t.EmployeeScheduleId = es.ID
where t.CreatedBy = 'MDJ' and es.ID = 247673

delete from dbo.EmployeeSchedule where ID = 247673
