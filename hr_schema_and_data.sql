SHOW DATABASES;
CREATE DATABASE IF NOT EXISTS testdb;
USE testdb;
CREATE TABLE IF NOT EXISTS users (id INT AUTO_INCREMENT PRIMARY KEY, name VARCHAR(100));
SHOW TABLES;
SELECT NOW();

CREATE DATABASE hr_attendance;
USE hr_attendance;

CREATE TABLE employees (
    employee_id INT PRIMARY KEY,
    full_name VARCHAR(100),
    department VARCHAR(50),
    designation VARCHAR(50),
    join_date DATE
);

CREATE TABLE attendance (
    attendance_id INT PRIMARY KEY,
    employee_id INT,
    date DATE,
    in_time DATETIME,
    out_time DATETIME,
    FOREIGN KEY (employee_id) REFERENCES employees(employee_id)
);

CREATE TABLE leave_records (
    leave_id INT PRIMARY KEY,
    employee_id INT,
    leave_date DATE,
    leave_type VARCHAR(20),
    FOREIGN KEY (employee_id) REFERENCES employees(employee_id)
);

INSERT INTO employees (employee_id, full_name, department, designation, join_date) VALUES
(1, 'Amit Verma', 'IT', 'Software Engineer', '2023-02-14'),
(2, 'Priya Sharma', 'HR', 'HR Executive', '2022-08-11'),
(3, 'Rohit Patil', 'Finance', 'Accountant', '2021-07-01'),
(4, 'Neha Kulkarni', 'IT', 'Data Analyst', '2022-04-10'),
(5, 'Vikas Yadav', 'Operations', 'Operations Manager', '2021-11-21'),
(6, 'Sneha Joshi', 'IT', 'UI/UX Designer', '2023-03-18'),
(7, 'Harsh Mehta', 'Sales', 'Sales Executive', '2020-09-09'),
(8, 'Meera Desai', 'Finance', 'Senior Accountant', '2019-05-13'),
(9, 'Sagar Gupta', 'IT', 'Cloud Engineer', '2023-01-01'),
(10, 'Aisha Khan', 'HR', 'HR Manager', '2020-12-23'),
(11, 'Nitin Rane', 'Finance', 'Financial Analyst', '2022-06-15'),
(12, 'Pooja More', 'IT', 'Database Admin', '2021-08-19'),
(13, 'Ankit Sharma', 'Sales', 'Business Analyst', '2023-07-11'),
(14, 'Divya Khedekar', 'Operations', 'Support Engineer', '2022-03-27'),
(15, 'Rahul Nair', 'IT', 'Machine Learning Engineer', '2023-05-30'),
(16, 'Komal Pawar', 'HR', 'Recruitment Lead', '2021-09-14'),
(17, 'Ritesh Jain', 'Finance', 'Auditor', '2020-02-10'),
(18, 'Sonali Mane', 'Operations', 'Coordinator', '2021-07-21'),
(19, 'Aarav Singh', 'IT', 'Backend Developer', '2022-11-16'),
(20, 'Kiran Patil', 'Sales', 'Sales Manager', '2019-10-05'),
(21, 'Ruchi Shah', 'IT', 'Frontend Developer', '2023-06-12'),
(22, 'Mayur Shinde', 'HR', 'HR Executive', '2020-03-29'),
(23, 'Krishna Naik', 'Operations', 'Operations Assistant', '2021-01-18'),
(24, 'Farhan Ali', 'IT', 'DevOps Engineer', '2023-01-22'),
(25, 'Payal Thakur', 'Finance', 'Tax Consultant', '2020-12-09'),
(26, 'Ananya Kale', 'IT', 'Software Tester', '2022-02-08'),
(27, 'Soham Gokhale', 'Operations', 'Logistics Manager', '2020-09-19'),
(28, 'Tanvi Bhosale', 'IT', 'AI Specialist', '2023-07-05'),
(29, 'Jayesh Pawar', 'Sales', 'Sales Coordinator', '2021-11-30'),
(30, 'Aditi Bansal', 'Finance', 'Junior Accountant', '2023-03-01'),
(31, 'Yash Gupta', 'IT', 'Network Engineer', '2021-10-12'),
(32, 'Snehal Jadhav', 'HR', 'HR Specialist', '2022-05-26'),
(33, 'Rohan Singh', 'IT', 'Product Manager', '2021-02-17'),
(34, 'Mansi Kohli', 'IT', 'QA Engineer', '2023-08-01'),
(35, 'Aditya Rao', 'Operations', 'Warehouse Manager', '2019-07-20'),
(36, 'Janhavi Shinde', 'IT', 'Data Engineer', '2023-04-01'),
(37, 'Pratik Naidu', 'Finance', 'Billing Specialist', '2021-06-14'),
(38, 'Naina Kaur', 'Sales', 'Sales Associate', '2020-08-23'),
(39, 'Aman Sethi', 'IT', 'Security Analyst', '2022-12-15'),
(40, 'Vaishali Patil', 'Finance', 'Audit Assistant', '2023-05-10'),
(41, 'Ravi Kumar', 'Operations', 'Technical Support', '2022-07-28'),
(42, 'Sana Sheikh', 'IT', 'Software Engineer', '2023-01-19'),
(43, 'Kunal Wagh', 'Human Resources', 'Compliance Officer', '2021-04-04'),
(44, 'Vidhi Jain', 'Sales', 'Lead Generator', '2020-11-25'),
(45, 'Tejas More', 'IT', 'Intern', '2023-09-10'),
(46, 'Simran Kaur', 'Finance', 'Risk Analyst', '2022-10-16'),
(47, 'Raghav Bhat', 'Operations', 'Shift Supervisor', '2020-02-27'),
(48, 'Shruti Deshpande', 'IT', 'AI Engineer', '2023-03-29'),
(49, 'Aaryan Mhatre', 'Finance', 'Account Assistant', '2021-12-05'),
(50, 'Pallavi Jagtap', 'HR', 'HR Intern', '2023-06-08');


INSERT INTO attendance (attendance_id, employee_id, date, in_time, out_time) VALUES
(1, 1, '2025-11-01', '2025-11-01 09:18:00', '2025-11-01 18:02:00'),
(2, 1, '2025-11-02', '2025-11-02 09:12:00', '2025-11-02 17:54:00'),
(3, 2, '2025-11-01', '2025-11-01 09:58:00', '2025-11-01 18:35:00'),
(4, 3, '2025-11-01', '2025-11-01 08:47:00', '2025-11-01 17:40:00'),
(5, 4, '2025-11-01', '2025-11-01 09:10:00', '2025-11-01 18:00:00'),
(6, 5, '2025-11-02', '2025-11-02 09:20:00', '2025-11-02 18:05:00'),
(7, 6, '2025-11-02', '2025-11-02 10:00:00', '2025-11-02 18:30:00'),
(8, 7, '2025-11-03', '2025-11-03 09:45:00', '2025-11-03 18:15:00'),
(9, 8, '2025-11-03', '2025-11-03 08:59:00', '2025-11-03 17:50:00'),
(10, 9, '2025-11-03', '2025-11-03 09:25:00', '2025-11-03 18:12:00'),
(11, 10, '2025-11-04', '2025-11-04 09:35:00', '2025-11-04 17:55:00'),
(12, 11, '2025-11-04', '2025-11-04 09:15:00', '2025-11-04 18:00:00'),
(13, 12, '2025-11-04', '2025-11-04 08:50:00', '2025-11-04 17:40:00'),
(14, 13, '2025-11-05', '2025-11-05 10:05:00', '2025-11-05 18:45:00'),
(15, 14, '2025-11-05', '2025-11-05 09:40:00', '2025-11-05 17:55:00'),
(16, 15, '2025-11-05', '2025-11-05 09:18:00', '2025-11-05 18:20:00'),
(17, 16, '2025-11-06', '2025-11-06 09:22:00', '2025-11-06 18:12:00'),
(18, 17, '2025-11-06', '2025-11-06 09:10:00', '2025-11-06 17:45:00'),
(19, 18, '2025-11-06', '2025-11-06 09:30:00', '2025-11-06 17:55:00'),
(20, 19, '2025-11-07', '2025-11-07 09:12:00', '2025-11-07 18:10:00'),
(21, 20, '2025-11-07', '2025-11-07 09:55:00', '2025-11-07 18:30:00'),
(22, 21, '2025-11-07', '2025-11-07 08:48:00', '2025-11-07 17:25:00'),
(23, 22, '2025-11-08', '2025-11-08 10:05:00', '2025-11-08 18:40:00'),
(24, 23, '2025-11-08', '2025-11-08 09:18:00', '2025-11-08 18:02:00'),
(25, 24, '2025-11-08', '2025-11-08 09:33:00', '2025-11-08 17:58:00'),
(26, 25, '2025-11-09', '2025-11-09 09:50:00', '2025-11-09 18:20:00'),
(27, 26, '2025-11-09', '2025-11-09 09:22:00', '2025-11-09 18:00:00'),
(28, 27, '2025-11-09', '2025-11-09 09:10:00', '2025-11-09 17:45:00'),
(29, 28, '2025-11-10', '2025-11-10 09:40:00', '2025-11-10 18:30:00'),
(30, 29, '2025-11-10', '2025-11-10 09:52:00', '2025-11-10 18:22:00'),
(31, 30, '2025-11-10', '2025-11-10 08:58:00', '2025-11-10 17:55:00'),
(32, 31, '2025-11-11', '2025-11-11 09:18:00', '2025-11-11 18:02:00'),
(33, 32, '2025-11-11', '2025-11-11 09:42:00', '2025-11-11 17:55:00'),
(34, 33, '2025-11-11', '2025-11-11 09:05:00', '2025-11-11 18:12:00'),
(35, 34, '2025-11-12', '2025-11-12 09:28:00', '2025-11-12 18:10:00'),
(36, 35, '2025-11-12', '2025-11-12 09:15:00', '2025-11-12 17:45:00'),
(37, 36, '2025-11-12', '2025-11-12 09:10:00', '2025-11-12 18:20:00'),
(38, 37, '2025-11-13', '2025-11-13 09:45:00', '2025-11-13 18:25:00'),
(39, 38, '2025-11-13', '2025-11-13 08:55:00', '2025-11-13 17:50:00'),
(40, 39, '2025-11-13', '2025-11-13 09:18:00', '2025-11-13 18:10:00'),
(41, 40, '2025-11-14', '2025-11-14 09:35:00', '2025-11-14 17:55:00'),
(42, 41, '2025-11-14', '2025-11-14 09:20:00', '2025-11-14 18:12:00'),
(43, 42, '2025-11-14', '2025-11-14 09:08:00', '2025-11-14 17:40:00'),
(44, 43, '2025-11-15', '2025-11-15 10:10:00', '2025-11-15 18:30:00'),
(45, 44, '2025-11-15', '2025-11-15 09:40:00', '2025-11-15 17:55:00'),
(46, 45, '2025-11-15', '2025-11-15 09:28:00', '2025-11-15 18:05:00'),
(47, 46, '2025-11-16', '2025-11-16 09:12:00', '2025-11-16 17:45:00'),
(48, 47, '2025-11-16', '2025-11-16 09:55:00', '2025-11-16 18:35:00'),
(49, 48, '2025-11-16', '2025-11-16 08:59:00', '2025-11-16 17:25:00'),
(50, 49, '2025-11-17', '2025-11-17 09:18:00', '2025-11-17 18:10:00');

INSERT INTO leave_records (leave_id, employee_id, leave_date, leave_type) VALUES
(101, 1, '2025-11-05', 'Sick Leave'),
(102, 2, '2025-11-03', 'Casual Leave'),
(103, 3, '2025-11-10', 'Sick Leave'),
(104, 4, '2025-11-06', 'Casual Leave'),
(105, 5, '2025-11-08', 'Sick Leave'),
(106, 6, '2025-11-15', 'Paid Leave'),
(107, 7, '2025-11-09', 'Casual Leave'),
(108, 8, '2025-11-04', 'Sick Leave'),
(109, 9, '2025-11-12', 'Paid Leave'),
(110, 10, '2025-11-14', 'Casual Leave'),
(111, 11, '2025-11-02', 'Sick Leave'),
(112, 12, '2025-11-07', 'Paid Leave'),
(113, 13, '2025-11-05', 'Casual Leave'),
(114, 14, '2025-11-11', 'Paid Leave'),
(115, 15, '2025-11-13', 'Sick Leave'),
(116, 16, '2025-11-09', 'Paid Leave'),
(117, 17, '2025-11-08', 'Casual Leave'),
(118, 18, '2025-11-15', 'Sick Leave'),
(119, 19, '2025-11-01', 'Paid Leave'),
(120, 20, '2025-11-10', 'Casual Leave'),
(121, 21, '2025-11-16', 'Sick Leave'),
(122, 22, '2025-11-03', 'Paid Leave'),
(123, 23, '2025-11-12', 'Casual Leave'),
(124, 24, '2025-11-05', 'Sick Leave'),
(125, 25, '2025-11-04', 'Casual Leave'),
(126, 26, '2025-11-14', 'Paid Leave'),
(127, 27, '2025-11-08', 'Sick Leave'),
(128, 28, '2025-11-13', 'Casual Leave'),
(129, 29, '2025-11-11', 'Paid Leave'),
(130, 30, '2025-11-16', 'Sick Leave'),
(131, 31, '2025-11-09', 'Casual Leave'),
(132, 32, '2025-11-07', 'Paid Leave'),
(133, 33, '2025-11-01', 'Sick Leave'),
(134, 34, '2025-11-10', 'Casual Leave'),
(135, 35, '2025-11-06', 'Paid Leave'),
(136, 36, '2025-11-12', 'Sick Leave'),
(137, 37, '2025-11-03', 'Casual Leave'),
(138, 38, '2025-11-15', 'Paid Leave'),
(139, 39, '2025-11-11', 'Sick Leave'),
(140, 40, '2025-11-14', 'Casual Leave'),
(141, 41, '2025-11-13', 'Paid Leave'),
(142, 42, '2025-11-09', 'Sick Leave'),
(143, 43, '2025-11-05', 'Casual Leave'),
(144, 44, '2025-11-16', 'Paid Leave'),
(145, 45, '2025-11-02', 'Sick Leave'),
(146, 46, '2025-11-08', 'Casual Leave'),
(147, 47, '2025-11-12', 'Paid Leave'),
(148, 48, '2025-11-03', 'Sick Leave'),
(149, 49, '2025-11-06', 'Paid Leave'),
(150, 50, '2025-11-07', 'Casual Leave');


CREATE OR REPLACE VIEW vw_attendance_summary AS
SELECT
  a.attendance_id,
  a.employee_id,
  e.full_name,
  e.department,
  a.date,
  a.in_time,
  a.out_time,
  TIMESTAMPDIFF(MINUTE, a.in_time, a.out_time) / 60.0 AS working_hours,
  CASE WHEN TIME(a.in_time) > '09:30:00' THEN 1 ELSE 0 END AS is_late
FROM attendance a
JOIN employees e ON a.employee_id = e.employee_id;


SELECT * FROM vw_attendance_summary LIMIT 50;

SHOW FULL TABLES WHERE Table_type = 'VIEW';


-- Total days present per employee


SELECT employee_id, full_name, COUNT(*) AS days_present
FROM attendance a JOIN employees e USING(employee_id)
GROUP BY employee_id;

--Late days per employee


SELECT employee_id, e.full_name, SUM(CASE WHEN TIME(in_time) > '09:30:00' THEN 1 ELSE 0 END) AS late_days
FROM attendance a JOIN employees e USING(employee_id)
GROUP BY employee_id;

-- Monthly summary (present days + total hours)


SELECT employee_id, e.full_name, MONTH(date) AS month_no,
       COUNT(*) AS present_days,
       SUM(TIMESTAMPDIFF(MINUTE, in_time, out_time))/60.0 AS total_hours
FROM attendance a JOIN employees e USING(employee_id)
GROUP BY employee_id, MONTH(date)
ORDER BY employee_id, month_no;

