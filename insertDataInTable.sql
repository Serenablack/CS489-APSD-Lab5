INSERT INTO Surgery VALUES
('S10', 'Smile Dental NYC', '123 Manhattan Ave, NY', '212-555-0100'),
('S13', 'Bright Teeth LA', '456 Sunset Blvd, LA', '310-555-0130'),
('S15', 'Pearl Dental Chicago', '789 Michigan Ave, Chicago', '312-555-0150'),
('S16', 'Pearl Dental Chicago', '789 Michigan Ave, Chicago', '312-555-0160'),
('S17', 'Pearl Dental Chicago', '789 Michigan Ave, Chicago', '312-555-0170');


INSERT INTO Patient VALUES
('P100', 'John', 'Doe', '111-222-3333', 'john@example.com', '101 Elm Street, NY', '1985-04-22'),
('P105', 'Jane', 'Smith', '222-333-4444', 'jane@example.com', '202 Pine Street, NY', '1990-08-15'),
('P108', 'Alex', 'Green', '333-444-5555', 'alex@example.com', '303 Maple Ave, LA', '1995-12-05'),
('P110', 'Michael', 'Blue', '444-555-6666', 'michael@example.com', '404 Oak Rd, Chicago', '1982-02-19');


INSERT INTO Dentist VALUES
('D001', 'Tony', 'Smith', '123-456-7890', 'tony.smith@dental.com', 'Orthodontist'),
('D002', 'Helen', 'Pearson', '234-567-8901', 'helen.pearson@dental.com', 'General Dentistry'),
('D003', 'Robin', 'Plevin', '345-678-9012', 'robin.plevin@dental.com', 'Endodontist'),
('D004', 'Jill', 'Bell', '456-789-0123', 'jill.bell@dental.com', 'Pediatric Dentist');



INSERT INTO Appointment VALUES
('A001', 'P100', 'D001', 'S15', '2013-09-12 10:00:00', 'Completed'),
('A002', 'P105', 'D001', 'S15', '2013-09-12 12:00:00', 'Completed'),
('A003', 'P108', 'D002', 'S10', '2013-09-12 10:00:00', 'Completed'),
('A004', 'P110', 'D002', 'S10', '2013-09-12 14:00:00', 'Completed'),
('A005', 'P105', 'D003', 'S15', '2013-09-14 16:30:00', 'Completed'),
('A013', 'P105', 'D002', 'S15', '2013-09-16 10:00:00', 'Completed'),
('A014', 'P110', 'D003', 'S15', '2013-09-16 11:30:00', 'Completed'),
('A015', 'P105', 'D004', 'S15', '2013-09-16 14:00:00', 'Completed'),
('A016', 'P110', 'D001', 'S15', '2013-09-16 16:30:00', 'Completed'),
('A006', 'P110', 'D004', 'S13', '2013-09-14 18:00:00', 'Completed');



INSERT INTO Bill VALUES
('B001', 'A001', 120.00, TRUE),
('B002', 'A002', 180.00, TRUE),
('B003', 'A003', 100.00, FALSE),
('B004', 'A004', 90.00, TRUE),
('B005', 'A005', 150.00, FALSE),
('B006', 'A006', 200.00, TRUE);