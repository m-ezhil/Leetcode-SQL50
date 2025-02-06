/* 1280. Students and Examinations */
select 
    std.student_id
    ,std.student_name 
    ,sub.subject_name
    ,count(exm.subject_name) attended_exams
from Students std
cross join Subjects sub
left join Examinations exm
    on std.student_id = exm.student_id and sub.subject_name = exm.subject_name
group by std.student_id, std.student_name, sub.subject_name
order by std.student_id, sub.subject_name