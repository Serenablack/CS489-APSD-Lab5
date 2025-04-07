-- query to  list of ALL Dentists registered in the system, sorted in ascending 
-- order of their lastNames 

SELECT * 
FROM Dentist
ORDER BY SUBSTRING_INDEX(last_name, ' ', -1) ASC;


-- query to  list of ALL Appointments for a given Dentist by their dentist_Id 
-- number including patient information
SELECT 
    A.*,
    P.first_name AS patient_name,
    P.last_name AS patient_familyName,
    P.email AS patient_email,
    P.mailing_address AS patient_address,
    P.contact_number AS patient_contact,
    P.date_of_birth AS patient_DOB
FROM
    Appointment A
        JOIN
    Patient P ON A.patient_id = P.patient_id
WHERE
    A.dentist_id = 'D001'; 

-- Query to list of ALL Appointments that have been scheduled at a Surgery 
-- Location 

SELECT 
    A.appointment_id,
    A.patient_id,
    A.dentist_id,
    A.surgery_id,
    S.name AS surgery_name,
    S.address AS surgery_address,
    A.date_time,
    A.status
FROM 
    Appointment A
JOIN 
    Surgery S ON A.surgery_id= S.surgery_id
    WHERE 
    S.address = '789 Michigan Ave, Chicago'
ORDER BY 
    A.date_time;



-- Query to list of the Appointments booked for a given Patient on a given Date

SELECT 
    A.appointment_id,
    A.date_time,
    D.first_name AS dentist_first_name,
    D.last_name AS dentist_last_name,
     P.first_name AS patient_first_name,
    P.last_name AS patient_last_name,
     P.patient_id AS patient_first_name,
   
    S.address AS surgery_addressappointment
FROM Appointment A
JOIN Dentist D ON A.dentist_id = D.dentist_id
JOIN Surgery S ON A.surgery_id = S.surgery_id
JOIN Patient P ON A.patient_id = P.patient_id

WHERE A.patient_id = 'P110' AND DATE(A.date_time) = '2013-09-12';
