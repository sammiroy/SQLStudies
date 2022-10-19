go
select StudentID, withdrawYN,
		AVG(mark) "Average Mark",
		count(mark) "Count Mark"
from	Registration
where	studentid >= 200000000
group by StudentID, withdrawYN
having AVG(Mark) >= 80 
	