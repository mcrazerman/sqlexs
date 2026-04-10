with recursive dates as (
select cast('2005-07-01' as date) as date
UNION ALL
SELECT dts.date + 1
    FROM dates dts
        where dts.date < cast('2005-07-31' as date)
)
select * from dates