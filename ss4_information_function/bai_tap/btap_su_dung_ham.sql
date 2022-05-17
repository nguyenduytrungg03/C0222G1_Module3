USE QuanLySinhVien;

-- Hiển thị tất cả các thông tin môn học (bảng subject) có credit lớn nhất.
select * from `subject` sub where sub.credit in (select max(credit) from `subject`);

-- Hiển thị các thông tin môn học có điểm thi lớn nhất.
select * , max(mark) from `subject` join mark on mark.sub_id = `subject`.sub_id ; 

-- Hiển thị các thông tin sinh viên và điểm trung bình của mỗi sinh viên, xếp hạng theo thứ tự điểm giảm dần --
select * , avg(m.mark) as diem_trung_binh from student s join mark m on s.student_id = m.student_id
group by s.student_id 
order by diem_trung_binh desc;