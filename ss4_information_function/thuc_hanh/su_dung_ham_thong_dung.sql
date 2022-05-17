USE QuanLySinhVien;
-- hiển thị số lượng sinh viên ở từng nơi
select address, count(student_id) ' số lượng học viên ' from student group by address;
-- tính điểm trung bình của các môn học 
select s.student_id, s.student_name, avg(mark) from student s join mark m on s.student_id = m.student_id group by s.student_id, s.student_name;
