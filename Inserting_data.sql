-- Insert sample data into employee table
INSERT INTO hospital.employee (emp_id, emp_type, fname, minit, lname, bdate, address, sex, contact_no, relative_contact_no, date_of_join, date_of_resign)
VALUES
  (1, 'EMP', 'John', 'D', 'Doe', '1990-05-15', '123 Street, City', 'M', '1234567890', '9876543210', '2020-01-01', NULL),
  (2, 'EMP', 'Jane', 'S', 'Smith', '1985-08-20', '456 Avenue, Town', 'F', '9876543210', '1234567890', '2019-02-15', '2022-05-31');

-- Insert sample data into room_type table
INSERT INTO hospital.room_type (room_type, room_abbrev, charge_per_bed)
VALUES
  ('General Ward', 'GW', 1000),
  ('Semi-Private', 'SSP', 2000),
  ('Single Private', 'SP', 3000),
  ('Deluxe', 'DX', 4000),
  ('Super Suite', 'SU', 5000);

-- Insert sample data into room_details table
INSERT INTO hospital.room_details (room_no, room_type, capacity, no_of_beds_occupied)
VALUES
  ('GW001', 'GW', 10, 5),
  ('SSP002', 'SSP', 5, 2),
  ('SP003', 'SP', 3, 1),
  ('DX004', 'DX', 2, 1),
  ('SSP005', 'SSP', 5, 3);

-- Insert sample data into patient_general_details table
INSERT INTO hospital.patient_general_details (patient_id, fname, minit, lname, sex, contact_no, bdate, relative_contact_no, address)
VALUES
  (1, 'Mary', 'L', 'Johnson', 'F', '9876543210', '1992-12-10', '1234567890', '789 Lane, Village'),
  (2, 'David', 'M', 'Williams', 'M', '1234567890', '1988-09-25', '9876543210', '456 Road, Suburb');

-- Insert sample data into patient_medical_conditions table
INSERT INTO hospital.patient_medical_conditions (patient_id, medical_history)
VALUES
  (1, 'Asthma'),
  (2, 'Diabetes');

-- Insert sample data into department table
INSERT INTO hospital.department (dep_no, dep_name, dep_head_id)
VALUES
  (1, 'Cardiology', 2),
  (2, 'Orthopedics', 1);

-- Insert sample data into doctors table
INSERT INTO hospital.doctors (emp_id, qualification, dep_no)
VALUES
  (1, 'MD', 1),
  (2, 'MS', 2);

-- Insert sample data into medical_equipment_details table
INSERT INTO hospital.medical_equipment_details (equipment_id, dep_no, name, cost, type, stock, reorderlevel)
VALUES
  (1, 1, 'EKG Machine', 5000, 'A', 10, 5),
  (2, 2, 'X-ray Machine', 10000, 'B', 5, 2);

-- Insert sample data into opd table
INSERT INTO hospital.opd (emp_id, consulting_fees)
VALUES
  (1, 500),
  (2, 700);

-- Insert sample data into opd_availability table
INSERT INTO hospital.opd_availability (emp_id, days, entry_time, exit_time)
VALUES
  (1, 'MON', TIME '09:00:00', TIME '17:00:00'),
  (2, 'TUE', TIME '10:00:00', TIME '18:00:00');

-- Insert sample data into opd_attendance table
INSERT INTO hospital.opd_attendance (emp_id, dates, in_time, out_time)
VALUES
  (1, DATE '2023-06-01', TIME '09:00:00', TIME '17:00:00'),
  (2, DATE '2023-06-02', TIME '10:00:00', TIME '18:00:00');

-- Insert sample data into specialised_doctor table
INSERT INTO hospital.specialised_doctor (emp_id, charge_per_visit)
VALUES
  (1, 1000),
  (2, 1500);

-- Insert sample data into specialised_doctor_visit table
INSERT INTO hospital.specialised_doctor_visit (emp_id, dates, in_time, out_time)
VALUES
  (1, DATE '2023-06-01', TIME '09:00:00', TIME '10:00:00'),
  (2, DATE '2023-06-02', TIME '14:00:00', TIME '16:00:00');

-- Insert sample data into general_staff table
INSERT INTO hospital.general_staff (emp_id, charge_per_hour)
VALUES
  (1, 50),
  (2, 60);

-- Insert sample data into attendance_log_general table
INSERT INTO hospital.attendance_log_general (emp_id, dates, in_time, out_time, shift_type)
VALUES
  (1, DATE '2023-06-01', TIMESTAMP '2023-06-01 09:00:00', TIMESTAMP '2023-06-01 17:00:00', 'D'),
  (2, DATE '2023-06-02', TIMESTAMP '2023-06-02 10:00:00', TIMESTAMP '2023-06-02 18:00:00', 'E');

-- Insert sample data into treatments_available table
INSERT INTO hospital.treatments_available (tid, did, treatment_name, fees)
VALUES
  ('T1', 1, 'Cardiac Stress Test', 500),
  ('T2', 2, 'Joint Replacement Surgery', 2000);

-- Insert sample data into policy_details table
INSERT INTO hospital.policy_details (policy_no, policy_type, company_id, company_name, cashless_availability, claim_amt)
VALUES
  ('P1', 'Health Insurance', 1, 'ABC Insurance', 'Y', 5000),
  ('P2', 'Health Insurance', 2, 'XYZ Insurance', 'N', 3000);

-- Insert sample data into patient_insurance_details table
INSERT INTO hospital.patient_insurance_details (policy_no, patient_id)
VALUES
  ('P1', 1),
  ('P2', 2);

-- Insert sample data into consultation_bill table
INSERT INTO hospital.consultation_bill (case_c_no, pid, dr_id, consultation_charges, extra_charges, diagnosis, bill_date, total_charges)
VALUES
  (1, 1, 1, 200, 50, 'Fever', TIMESTAMP '2023-06-01 10:30:00', 250),
  (2, 2, 2, 300, 75, 'Cough', TIMESTAMP '2023-06-02 14:45:00', 375);

-- Insert sample data into admitted table
INSERT INTO hospital.admitted (case_a_number, patient_id, admit_date, discharge_date, room_no)
VALUES
  (1, 1, DATE '2023-06-01', DATE '2023-06-03', 'GW001'),
  (2, 2, DATE '2023-06-02', NULL, 'SSP002');

-- Insert sample data into intermediate_bill table
INSERT INTO hospital.intermediate_bill (case_a_no, bill_id, patient_id, bill_date, treatment_id, room_no, room_charges, treatment_charges, diagnosis, specialised_dr_id, opd_dr_id, specialised_dr_charge, opd_dr_charge, total_charge)
VALUES
  (1, 1, 1, DATE '2023-06-02', 'T1', 'GW001', 500, 200, 'Fever', 1, 1, 100, 100, 900),
  (2, 1, 2, DATE '2023-06-03', 'T2', 'SSP002', 1000, 1500, 'Cough', 2, 2, 200, 200, 3400);

-- Insert sample data into final_bill table
INSERT INTO hospital.final_bill (case_a_no, patient_id, policy_no, insurance_status, claim_per_passed, claim_amt_passed, total_charges, amt_payable)
VALUES
  (1, 1, 'P1', 'Y', 80.0, 4000.0, 900, 500.0),
  (2, 2, 'P2', 'N', 0.0, 0.0, 3400, 3400.0);

-- Insert sample data into discharge_summary table
INSERT INTO hospital.discharge_summary (case_a_no, pid, diagnosis_details, patient_status)
VALUES
  (1, 1, 'Patient recovered well', 'Discharged'),
  (2, 2, 'Patient needs further observation', 'Admitted');
