CREATE DATABASE apollo_hospital; 
USE apollo_hospital; 
CREATE TABLE Patients ( 
patient_id INT PRIMARY KEY AUTO_INCREMENT, 
name VARCHAR(100) NOT NULL, 
gender ENUM('M','F','O'), 
age INT, 
phone VARCHAR(15), 
address VARCHAR(200) 
); 
show tables; 
CREATE TABLE Doctors ( 
doctor_id INT PRIMARY KEY AUTO_INCREMENT, 
name VARCHAR(100) NOT NULL, 
specialization VARCHAR(100), 
phone VARCHAR(15) 
); 
CREATE TABLE Appointments ( 
appointment_id INT PRIMARY KEY AUTO_INCREMENT, 
patient_id INT, 
doctor_id INT, 
appointment_date DATE, 
status ENUM('Scheduled','Completed','Cancelled') DEFAULT 'Scheduled', 
FOREIGN KEY (patient_id) REFERENCES Patients(patient_id), 
FOREIGN KEY (doctor_id) REFERENCES Doctors(doctor_id) 
); 
CREATE TABLE Billing ( 
bill_id INT PRIMARY KEY AUTO_INCREMENT, 
patient_id INT, 
amount DECIMAL(10,2), 
bill_date DATE DEFAULT (CURRENT_DATE), 
status ENUM('Paid','Unpaid') DEFAULT 'Unpaid', 
FOREIGN KEY (patient_id) REFERENCES Patients(patient_id) 
); 
CREATE TABLE Prescriptions ( 
prescription_id INT PRIMARY KEY AUTO_INCREMENT, 
patient_id INT, 
doctor_id INT, 
medicine VARCHAR(200), 
dosage VARCHAR(100), 
prescription_date DATE DEFAULT (CURRENT_DATE), 
FOREIGN KEY (patient_id) REFERENCES Patients(patient_id), 
FOREIGN KEY (doctor_id) REFERENCES Doctors(doctor_id) 
); 
INSERT INTO Doctors (name, specialization, phone) VALUES 
('Dr. Ramesh Gupta', 'Cardiologist', '9876543210'), 
('Dr. Neha Sharma', 'Dermatologist', '9876501234'), 
('Dr. Arjun Mehta', 'Neurologist', '9123456780'), 
('Dr. Kavita Iyer', 'Pediatrician', '9988776655'), 
('Dr. Rajesh Patel', 'Orthopedic', '9812345678'); 
INSERT INTO Patients (name, gender, age, phone, address) VALUES 
('Amit Kumar', 'M', 34, '9871112233', 'Delhi'), 
('Sneha Verma', 'F', 28, '9872223344', 'Mumbai'), 
('Rahul Singh', 'M', 45, '9873334455', 'Kolkata'), 
('Priya Nair', 'F', 52, '9874445566', 'Chennai'), 
('Vikram Desai', 'M', 39, '9875556677', 'Ahmedabad'), 
('Anjali Gupta', 'F', 23, '9876667788', 'Lucknow'), 
('Suresh Reddy', 'M', 60, '9877778899', 'Hyderabad'), 
('Meena Joshi', 'F', 30, '9878889900', 'Pune'), 
('Ravi Shankar', 'M', 48, '9879990011', 'Bengaluru'), 
('Kiran Bedi', 'F', 36, '9870001122', 'Delhi'), 
('Rajesh Kumar', 'M', 41, '9871112234', 'Jaipur'), 
('Pooja Sharma', 'F', 29, '9872223345', 'Patna'), 
('Ankit Verma', 'M', 33, '9873334456', 'Bhopal'), 
('Ritika Singh', 'F', 25, '9874445567', 'Indore'), 
('Manish Gupta', 'M', 38, '9875556678', 'Kanpur'), 
('Neha Reddy', 'F', 27, '9876667789', 'Vijayawada'), 
('Sandeep Mehta', 'M', 50, '9877778890', 'Surat'), 
('Kavita Nair', 'F', 31, '9878889901', 'Trivandrum'), 
('Arjun Patel', 'M', 46, '9879990012', 'Rajkot'), 
('Divya Joshi', 'F', 34, '9870001123', 'Ahmedabad'), 
('Vikram Sharma', 'M', 42, '9871112235', 'Lucknow'), 
('Sonal Gupta', 'F', 28, '9872223346', 'Patiala'), 
('Rohit Kumar', 'M', 37, '9873334457', 'Jaipur'), 
('Priya Reddy', 'F', 26, '9874445568', 'Hyderabad'), 
('Aakash Verma', 'M', 44, '9875556679', 'Bhopal'), 
('Megha Singh', 'F', 32, '9876667790', 'Chandigarh'), 
('Saurabh Patel', 'M', 39, '9877778891', 'Ahmedabad'), 
('Ananya Sharma', 'F', 24, '9878889902', 'Delhi'), 
('Rajat Mehta', 'M', 47, '9879990013', 'Surat'), 
('Nisha Gupta', 'F', 33, '9870001124', 'Mumbai'), 
('Karan Reddy', 'M', 51, '9871112236', 'Vijayawada'), 
('Swati Joshi', 'F', 30, '9872223347', 'Pune'), 
('Amit Mehra', 'M', 36, '9873334458', 'Delhi'), 
('Shreya Nair', 'F', 29, '9874445569', 'Trivandrum'), 
('Deepak Sharma', 'M', 43, '9875556680', 'Lucknow'), 
('Ritu Verma', 'F', 27, '9876667791', 'Patna'), 
('Sanjay Kumar', 'M', 40, '9877778892', 'Jaipur'), 
('Priyanka Gupta', 'F', 25, '9878889903', 'Chennai'), 
('Vivek Reddy', 'M', 35, '9879990014', 'Hyderabad'), 
('Anjali Sharma', 'F', 28, '9870001125', 'Delhi'), 
('Rahul Mehta', 'M', 38, '9871112237', 'Surat'), 
('Sneha Nair', 'F', 31, '9872223348', 'Trivandrum'), 
('Aman Patel', 'M', 45, '9873334459', 'Rajkot'), 
('Divya Gupta', 'F', 29, '9874445570', 'Mumbai'), 
('Rakesh Verma', 'M', 50, '9875556681', 'Bhopal'), 
('Meera Joshi', 'F', 26, '9876667792', 'Ahmedabad'), 
('Ajay Singh', 'M', 39, '9877778893', 'Chandigarh'), 
('Neha Sharma', 'F', 32, '9878889904', 'Delhi'), 
('Siddharth Reddy', 'M', 41, '9879990015', 'Hyderabad'), 
('Anita Patel', 'F', 30, '9870001126', 'Rajkot'), 
('Rohan Mehra', 'M', 37, '9871112238', 'Mumbai'), 
('Swati Gupta', 'F', 28, '9872223349', 'Pune'), 
('Vikas Sharma', 'M', 44, '9873334460', 'Jaipur'), 
('Kiran Nair', 'F', 25, '9874445571', 'Trivandrum'), 
('Manoj Kumar', 'M', 46, '9875556682', 'Lucknow'), 
('Pooja Verma', 'F', 27, '9876667793', 'Patna'), 
('Ramesh Reddy', 'M', 49, '9877778894', 'Hyderabad'), 
('Nidhi Joshi', 'F', 33, '9878889905', 'Delhi'), 
('Ankit Patel', 'M', 36, '9879990016', 'Rajkot'), 
('Sweta Sharma', 'F', 29, '9870001127', 'Chennai'), 
('Vikram Mehta', 'M', 42, '9871112239', 'Surat'), 
('Neha Gupta', 'F', 31, '9872223350', 'Mumbai'), 
('Rajat Reddy', 'M', 38, '9873334461', 'Hyderabad'), 
('Priya Joshi', 'F', 26, '9874445572', 'Pune'), 
('Sanjay Patel', 'M', 45, '9875556683', 'Rajkot'), 
('Ananya Sharma', 'F', 28, '9876667794', 'Delhi'), 
('Amit Verma', 'M', 40, '9877778895', 'Bhopal'), 
('Ritika Gupta', 'F', 25, '9878889906', 'Ahmedabad'), 
('Rohit Reddy', 'M', 37, '9879990017', 'Hyderabad'), 
('Meena Joshi', 'F', 30, '9870001128', 'Pune'), 
('Vivek Patel', 'M', 43, '9871112240', 'Rajkot'), 
('Swati Sharma', 'F', 29, '9872223351', 'Chennai'), 
('Deepak Gupta', 'M', 39, '9873334462', 'Mumbai'), 
('Anjali Verma', 'F', 32, '9874445573', 'Delhi'), 
('Rakesh Mehta', 'M', 41, '9875556684', 'Surat'), 
('Nisha Reddy', 'F', 27, '9876667795', 'Hyderabad'), 
('Ajay Sharma', 'M', 36, '9877778896', 'Lucknow'), 
('Kavita Joshi', 'F', 30, '9878889907', 'Pune'), 
('Saurabh Patel', 'M', 44, '9879990018', 'Rajkot'), 
('Priya Gupta', 'F', 28, '9870001129', 'Mumbai'), 
('Rohit Verma', 'M', 38, '9871112241', 'Bhopal'), 
('Megha Sharma', 'F', 26, '9872223352', 'Delhi'); 

-- Book Appointment 
INSERT INTO Appointments (patient_id, doctor_id, appointment_date)  
VALUES (1, 2, '2025-10-05'); 

-- Assign Doctor & Prescription 
INSERT INTO Prescriptions (patient_id, doctor_id, medicine, dosage) 
VALUES (1, 2, 'Paracetamol 500mg', '1 tablet twice daily'); 

-- Generate Bill 
INSERT INTO Billing (patient_id, amount, status) 
VALUES (1, 500.00, 'Unpaid'); 
select * from Patients; 
-- List all patients with their phone numbers 
SELECT name, phone FROM Patients; 
-- Count the total number of patients 
SELECT COUNT(*) AS total_patients FROM Patients; 

-- Show all doctors specializing in 'Cardiologist' 
SELECT name, phone FROM Doctors 
WHERE specialization = 'Cardiologist'; 

INSERT INTO Appointments (patient_id, doctor_id, appointment_date, status) 
VALUES  
(1, 1, CURDATE(), 'Scheduled'), 
(5, 3, CURDATE(), 'Scheduled'), 
(10, 2, CURDATE(), 'Scheduled'); 

-- Book Appointment 
INSERT INTO Appointments (patient_id, doctor_id, appointment_date)  
VALUES (4, 2, current_date()); 

-- Find all appointments scheduled for today 
SELECT * FROM Appointments 
WHERE appointment_date = CURDATE(); 
SELECT * FROM Appointments; 
INSERT INTO Appointments (patient_id, doctor_id, appointment_date) 
VALUES (5, 2, CURDATE()); 

SELECT * FROM Appointments
WHERE appointment_date = CURDATE();
 
-- List patients who have appointments with 'Dr. Neha Sharma' 
SELECT p.name, a.appointment_date 
FROM Appointments a 
JOIN Patients p ON a.patient_id = p.patient_id 
JOIN Doctors d ON a.doctor_id = d.doctor_id 
WHERE d.name = 'Dr. Neha Sharma'; 

-- Count how many appointments each doctor has 
SELECT d.name, COUNT(a.appointment_id) AS total_appointments 
FROM Doctors d 
LEFT JOIN Appointments a ON d.doctor_id = a.doctor_id 
GROUP BY d.doctor_id; 

-- List all unpaid bills 
SELECT b.bill_id, p.name, b.amount, b.bill_date 
FROM Billing b 
JOIN Patients p ON b.patient_id = p.patient_id 
WHERE b.status = 'Unpaid'; 

-- Find patients who have never had an appointment 
SELECT name FROM Patients 
WHERE patient_id NOT IN (SELECT patient_id FROM Appointments); 

-- List prescriptions given by 'Dr. Arjun Mehta' 
SELECT pr.medicine, pr.dosage, p.name AS patient_name 
FROM Prescriptions pr 
JOIN Patients p ON pr.patient_id = p.patient_id 
JOIN Doctors d ON pr.doctor_id = d.doctor_id 
WHERE d.name = 'Dr. Arjun Mehta'; 

INSERT INTO Prescriptions (patient_id, doctor_id, medicine, dosage) 
VALUES (1, 2, 'Paracetamol 500mg', '1 tablet twice daily'); 

INSERT INTO Prescriptions (patient_id, doctor_id, medicine, dosage) 
VALUES (1, 3, 'Aspirin 75mg', '1 tablet daily'); 

SELECT pr.medicine, pr.dosage, p.name AS patient_name 
FROM Prescriptions pr 
JOIN Patients p ON pr.patient_id = p.patient_id 
JOIN Doctors d ON pr.doctor_id = d.doctor_id 
WHERE d.name = 'Dr. Arjun Mehta'; 

-- Find the total billing amount for each patient 
SELECT p.name, SUM(b.amount) AS total_bill 
FROM Patients p 
JOIN Billing b ON p.patient_id = b.patient_id 
GROUP BY p.patient_id; 

-- List patients above 40 years of age 
SELECT name, age FROM Patients 
WHERE age > 40; 

-- Show appointments with status 'Completed' 
INSERT INTO Appointments (patient_id, doctor_id, appointment_date)  
VALUES (1, 2, '2025-10-05'); 
UPDATE Appointments 
SET status = 'Completed' 
WHERE appointment_id = 1;
 
INSERT INTO Appointments (patient_id, doctor_id, appointment_date, status) VALUES 
(2, 1, CURDATE(), 'Completed'), 
(3, 3, CURDATE(), 'Cancelled'), 
(4, 2, CURDATE(), 'Scheduled'); 
select * from Appointments; 

SELECT a.appointment_id, p.name, d.name AS doctor_name, a.appointment_date 
FROM Appointments a 
JOIN Patients p ON a.patient_id = p.patient_id 
JOIN Doctors d ON a.doctor_id = d.doctor_id 
WHERE a.status = 'Completed'; 

-- Find the patient with the highest single bill 
SELECT p.name, b.amount 
FROM Billing b 
JOIN Patients p ON b.patient_id = p.patient_id 
ORDER BY b.amount DESC 
LIMIT 1; 

-- Count how many male and female patients 
SELECT gender, COUNT(*) AS total FROM Patients 
GROUP BY gender; 

-- List appointments in the next 7 days 
SELECT a.appointment_id, p.name, d.name AS doctor_name, a.appointment_date 
FROM Appointments a 
JOIN Patients p ON a.patient_id = p.patient_id 
JOIN Doctors d ON a.doctor_id = d.doctor_id 
WHERE a.appointment_date BETWEEN CURDATE() AND DATE_ADD(CURDATE(), INTERVAL 7 DAY); 

-- Show all doctors who have not been assigned any appointment 
SELECT name FROM Doctors 
WHERE doctor_id NOT IN (SELECT doctor_id FROM Appointments); 

-- Find total number of prescriptions issued by each doctor 
SELECT d.name, COUNT(pr.prescription_id) AS total_prescriptions 
FROM Doctors d 
LEFT JOIN Prescriptions pr ON d.doctor_id = pr.doctor_id 
GROUP BY d.doctor_id; 

-- List patients who have bills above 1000 
INSERT INTO Billing (patient_id, amount, status) VALUES 
(2, 1500.00, 'Paid'), 
(3, 2000.00, 'Unpaid'), 
(4, 1200.00, 'Paid'); 

SELECT p.name, b.amount 
FROM Patients p 
JOIN Billing b ON p.patient_id = b.patient_id 
WHERE b.amount > 1000;

 -- Find patients who have multiple appointments 
SELECT p.name, COUNT(a.appointment_id) AS appointment_count 
FROM Patients p 
JOIN Appointments a ON p.patient_id = a.patient_id 
GROUP BY p.patient_id 
HAVING COUNT(a.appointment_id) > 1; 

-- Show all appointments with patient name, doctor name, and status 
SELECT a.appointment_id, p.name AS patient_name, d.name AS doctor_name, a.status 
FROM Appointments a 
JOIN Patients p ON a.patient_id = p.patient_id 
JOIN Doctors d ON a.doctor_id = d.doctor_id; 

-- List patients who have both prescriptions and bills 
SELECT DISTINCT p.name 
FROM Patients p 
JOIN Prescriptions pr ON p.patient_id = pr.patient_id 
JOIN Billing b ON p.patient_id = b.patient_id;

-- Find average age of patients 
SELECT AVG(age) AS average_age FROM Patients; 

-- List top 5 patients with highest total billing 
SELECT p.name, SUM(b.amount) AS total_bill 
FROM Patients p 
JOIN Billing b ON p.patient_id = b.patient_id 
GROUP BY p.patient_id 
ORDER BY total_bill DESC 
LIMIT 5; 

-- Count appointments per status (Scheduled/Completed/Cancelled) 
SELECT status, COUNT(*) AS total 
FROM Appointments 
GROUP BY status; 

-- Show prescriptions for patients who are above 50 years old 
INSERT INTO Prescriptions (patient_id, doctor_id, medicine, dosage) 
VALUES  
(7, 1, 'Aspirin 75mg', '1 tablet daily'),   -- Suresh Reddy 
(4, 3, 'Vitamin D', '1 capsule daily'),     -- Priya Nair 
(22, 2, 'Metformin 500mg', '1 tablet twice daily'); -- Karan Reddy 
select * from  Prescriptions; 

SELECT p.name, pr.medicine, pr.dosage 
FROM Prescriptions pr 
JOIN Patients p ON pr.patient_id = p.patient_id 
WHERE p.age > 50;
commit;

-- FINISH PROJECT 


-- Top doctor with most appointments
SELECT d.name,COUNT(a.appointment_id) AS total_appointments
FROM Doctor d
JOIN Appointment a ON d.doctor_id = a.doctor_id
GROUP BY d.doctor_id
ORDER BY total_appointments DESC
LIMIT 1;

-- Doctor whose patients generated highest billing
SELECT d.name,SUM(b.amount) AS total_revenue
FROM Doctors d
JOIN Appointments a ON a.patient_id = b.patient_id
GROUP BY d.doctor_id
ORDER BY total_revenue DESC
LIMIT 1;

-- Patient who have appointment but no prescription
SELECT DISTINCT p.name
FROM Patients p
JOIN Appointment a ON p.patient_id = a.patient_id
LEFT JOIN Prescription pr ON p.patient_id = pr.patient_id
WHERE pr.prescription_id is NULL;

-- Patients who visited same doctor more than once
SELECT p.name,d.name AS doctor_name,COUNT(*)AS visit_count
FROM Appointments a
JOIN Patients p ON a.patient_id =p.patient_id
JOIN Doctor d ON a.doctor_id = d.doctor_id
GROUP BY p.patient_id, a.doctor_id
HAVING COUNT(*)>1;

-- Most common medicine prescribed
SELECT medicine, COUNT(*) AS total_times
FROM Prescriptions
GROUP BY medicine
ORDER BY total_times DESC
LIMIT 1;

-- Average billing per patient
SELECT p.name,AVG(b.amount)AS avg_bill
FROM Patients p 
JOIN Billing b ON p.patient_id = b.patient_id
GROUP BY p.patient_id;

-- Doctor who have treated patients above 50 years
SELECT DISTINCT d.name
FROM Doctor d
JOIN Appointments a ON d.doctor_id = a.doctor_id
JOIN Patients p ON a.patient_id = p.patient_id
WHERE p.age > 50;

-- Patients with highest total bill
SELECT p.name,SUM(b.amount) AS total_bill
FROM Patients p
JOIN Billing b ON p.patient_id = b.patient_id
GROUP BY p.patient_id
ORDER BY total_bill DESC
LIMIT 1;

commit;