use quanlysinhvien;
-- lấy tên học viên bắt đầu bằng chữ h --
select * from student where student_name like 'H%'; 
-- hiển thị các thông tin lớp học bắt đầu từ t12 --
select * from class where month(start_date) = 12 ;
-- hiển thị thông tin môn học có credit trong khoảng 3-5 --
select * from  subject where credit between 3 and 5; 
-- thay đổi mã class_id của sinh viên tên hung là 2 -- 
update student set class_id = 2 where student_name = 'Hung';
-- hiển thị thông tin student_name, sub_name, mark. xắp xếp theo điểm thi giảm, trùng thì sắp theo tên tăng --
select s.student_name, sub.sub_name, m.mark from mark m join `subject` sub on m.sub_id = sub.sub_id join student s on m.student_id = s.student_id order by mark desc, student_name asc; 