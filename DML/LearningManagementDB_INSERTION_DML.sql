INSERT INTO Lecturer(lecturerID, lectureName, lecturerPhone) VALUES 
('rru143', 'Robert Rucker', '480-123-1234'),
('elz123', 'Ed Lorenzen', '480-124-1235'),
('ael189', 'Azel Elbrawy', '480-189-1234'),
('jms117', 'M James', '470-199-1254'),
('mml339', 'Meuth Miller', '439-255-8858'),
('gdl130', 'De Luca', '401-111-1234'),
('ddm101', 'D Doheny', '401-101-1225'),
('twl102', 'T Walsh', '401-102-1995'),
('ase103', 'Asmaa Elbadrawy', '450-155-4655'),
('brg104', 'Brandon Gatto', '493-451-4692'),
('ddy105', 'D Doheny', '421-456-7858'),
('thp106', 'Thomas Pearson', '412-411-4251'),
('jhl107', 'Jim Helm', '445-451-4455'),
('sun108', 'S Usman', '498-451-4255'),
('nyq109', 'N Quach', '485-421-4584');

INSERT INTO Course(courseID, lecturerID, courseName, startDate, endDate) VALUES 
('IFT500', 'rru143', 'Advanced DBMS','2021-08-06', '2022-02-20'),
('IFT501', 'elz123', 'OOP with Java','2021-08-06',	'2021-12-20'),
('IFT502', 'elz123', 'CyberSecurity','2021-12-06', '2022-08-20'),
('IFT503', 'mml339', 'Java','2020-10-06', '2021-06-10'),
('IFT504', 'gdl130', 'Python','2020-08-06',	'2021-04-10'),
('IFT505', 'twl102', 'C#','2020-05-06', '2021-01-10'),
('IFT506', 'nyq109', 'Info Tech Programming Logic','2021-01-06', '2021-09-20'),
('IFT507', 'sun108', 'OS Architecture','2021-02-06',	'2021-10-20'),
('IFT508', 'jhl107', 'Data Structure','2021-03-06', '2021-10-20'),
('IFT509', 'thp106', 'Internet Networking', '2021-04-06', '2021-12-10'),
('IFT510', 'ddy105', 'Info Model Storage & Retreival', '2021-02-06',	'2021-08-10'),
('IFT600', 'brg104', 'Computer Security','2021-05-06', '2021-01-10'),
('IFT601', 'ase103', 'UNIX', '2021-12-06', '2021-08-20'),
('IFT602', 'jms117', 'Big Data', '2021-12-06',	'2021-08-20'),
('IFT603', 'jhl107', 'Web Programming', '2021-12-06', '2021-08-20'),
('IFT604', 'mml339', 'Middleware Programming', '2020-10-06', '2021-06-10'),
('IFT605', 'ddy105', 'Fullstack development', '2020-08-06',	'2021-04-10'),
('IFT606', 'twl102', 'Cloud Computing', '2020-05-06', '2021-01-10'),
('IFT607', 'ddm101', 'Artificial Intelligence', '2021-07-06',	'2022-03-10'),
('IFT608', 'ase103', 'Post Implementation', '2021-08-06', '2022-04-10'),
('IFT609', 'ddm101', 'Data Science', '2021-09-06',	'2022-05-10'),
('IFT610', 'ase103', 'Cryptography', '2021-10-06', '2022-06-10'),
('IFT700', 'ael189', 'Data Analytics', '2021-08-06', '2022-08-20'),
('IFT701', 'rru143', 'Data Visualisation', '2020-08-06', '2021-08-20');

INSERT INTO Student (courseID, addressName, phoneNumberNr, studentName) VALUES
('IFT500', '2017 Bressbrook Rd, Fort Mill, SC, 29708', '704-869-4723', 'Scott Hudson'),
('IFT501', '930 E Lemon Street, Tempe, AZ, 85281', '480-123-1234', 'Robin Williams'),
('IFT502', '920 E DownTown Abbey, Tempe, AZ, 86254', '480-123-1257', 'Jules Verne'),
('IFT503', '930 E Lemon Street, Tempe, AZ, 85281', '480-128-1234', 'Alan Smith'),
('IFT504', '1100 McClinton Drive, Tempe, AZ, 82341 ', '480-456-7890', 'Jane Adams'),
('IFT505', '98-17 Horace Harding Expy, Corona, NY, 11368', '347-543-9080', 'Li Zhi'),
('IFT506', '10408 HillsBorough St, Huntersville,NC, 28078', '347-543-9081', 'Shan Yi'),
('IFT507', '506 Rice Rd, Latonia, KY, 41015', '347-543-9082', 'Tara Bolen'),
('IFT508', '1905 Memorial Pkwy,Fort Thomas, KY, 41075', '347-543-7080', 'Michelle Davis'),
('IFT509', '413 E 3rd St, Newport,KY, 41071', '513-543-9969', 'Ben Zang'),
('IFT510', '10407 HillsBorough St, Huntersville,NC, 28078', '347-543-9081', 'Leaf Florist'),
('IFT600', '2128 Oakland Ave, Covington, KY, 41014', '859-291-8448', 'Dale Adams'),
('IFT601', '157 Military Pkwy, Fort Thomas,KY, 41075', '347-543-7080', 'Charlie Deng'),
('IFT602', '2751 Alexandria Av, Covington, KY, 41015', '859-512-4732', 'Aaron C Fields'),
('IFT603', '2283 Rolling Hills Dr, Fort Mitchell, KY, 41017', '859-957-7287', 'Zareen Khan'),
('IFT604', '3079 Silverbell Way, Independence, KY, 41051', '859-630-2103', 'Zachary Ryland'),
('IFT605', '245 Clearview Ln,Crittenden, KY, 41030', '859-640-7072', 'Zachary Poelman'),
('IFT606', '1344 Cayton Rd, Florence, KY, 41042', '859-510-5732', 'Yuki Okada'),
('IFT607', '7045 Glen Kerry ct, Florence, KY, 41042', '859-559-5022', 'Yu Jile Chi'),
('IFT608', '781 Woodview Dr, Edgewood, KY, 41017', '859-331-5651', 'William Tucker'),
('IFT609', '217 3rd Av,Dayton, KY, 41074', '859-431-7135', 'William Smith'),
('IFT700', '208 E Jones St, Fuquay Varina, NC, 27526', '919-876-1139', 'Charles Naus'),
('IFT701', '5312 Falls Of Neuse Rd, Raleigh, NC, 27609', '919-790-9183', 'Julia Sitauls'),
('IFT610', '1389 Aurora Glen Dr, Rural Hall, NC, 27045', '336-631-0317', 'Stephaine Zang'),
('IFT603', '4120 Cornwallis Camp Dr,Charlotte, NC, 28226', '704-267-1421', 'Clifford Jones'),
('IFT604', '258 Green Way Ln, Wilkesboro, NC, 27613', '828-773-9641', 'Edward Holland'),
('IFT605', '128 Wyndham Ct, High Point, NC, 28659', '336-869-9035', 'Edward King'),
('IFT606', '132 35th Ave Nw, Hickory, NC, 28211', '828-328-1243', 'Edwin Jeffords'),
('IFT607', '111 Carpenter Town Ln,Cary, NC, 28226', '919-621-7946', 'Elaine Parker Jones'),
('IFT608', '205 Barrignton Park Dr, Greer, SC, 29650', '864-773-9641', 'Ray Biggs'),
('IFT609', '1637 Rockbridge Rd, Ridgeway, SC, 29130', '803-869-9035', 'Ruth Neal'),
('IFT700', '639 E Main St,Chesterfield, SC, 29709', '843-228-7155', 'Ricardo Crump'),
('IFT701', '21 Swan Lake Dr, Sumter, SC, 29150', '843-491-9941', 'Satter Bharde'),
('IFT500', '1221 Oakmont Ave,Charlotte, NC, 28205', '704-965-9290', 'Brett Rhynee'),
('IFT503', '159 Troy Dr, Lumberton, NC, 28358', '910-740-6797', 'Ashelle Vance'),
('IFT504', '3015 Telford Pl, Charlotte, NC, 28205', '704-537-2182', 'Allen Bentley'),
('IFT505', '999 Mclane Rd, Greenville, SC, 30605', '864-425-4542', 'Brandon Clark'),
('IFT506', '834 Ikd Stonehouse Rd,Chapel Hill, NC, 27516', '919-618-4871', 'Jessica Cox'),
('IFT507', '180 Cactus Ln,Wilkesboro, NC, 28697', '336-973-3689', 'A C Burgess'),
('IFT509', '1300 Reece Rd, Charlotte, NC, 27101', '336-777-8885', 'Ellen Cooley'),
('IFT510', '3600 Haverstick Pl,Charlotte, NC, 28209', '704-451-8208', 'Pranav Gray'),
('IFT600', '4520 Gwynnebrook Cir, Raleigh, NC, 27613', '336-838-3464', 'Cory Justus'),
('IFT601', '166 Al Jones Rd, N Wilkesboro, NC, 28659', '704-589-0865', 'Craig Rogers'),
('IFT602', '721 Governor Morrison St Unit 425, Charlotte, NC, 28211', '704-589-4610', 'Cutis Paul'),
('IFT603', '304 Murrell Rd, Greenville, SC, 29605', '864-328-1243', 'Richard Clark'),
('IFT604', '117 Hanover Pl, Chapel Hill, NC, 27516', '919-967-5036', 'AA Knowles Jr'),
('IFT605', '510 Havershire Dr, Jamestown, NC, 27282', '336-207-1568', 'Riya Church'),
('IFT606', '127 Friendfield Dr, Fort Mill, SC, 29715', '803-548-9090', 'Scott Thompson'),
('IFT607', '87 Castellan Dr, SC, 29650', '843-617-7155', 'Stevan Avant'),
('IFT701', '1320 McClinton Avenue, Tempe, Arizona, 87231', '978-156-8945', 'Robin Brown');

INSERT INTO ClassRoom (classRoomID, classSize, limitingFactor) VALUES
('PLT201', 30, 1.0),
('PLT281', 60, 0.5),
('PLT306', 45, 1.0),
('PLT307', 50, 1.0),
('PLT308', 70, 0.5),
('PLT309', 80, 0.5),
('PLT310', 90, 1.0),
('PLT401', 40, 1.0),
('PLT402', 35, 1.0),
('PLT403', 100, 0.5),
('AGC301', 100, 0.5),
('AGC201', 70, 0.45),
('AGC202', 80, 1.0),
('AGC203', 40, 1.0),
('AGC204', 30, 0.5),
('AGC302', 25, 1.0),
('AGC303', 90, 0.7),
('INS101', 100, 1.0),
('INS102', 10, 1.0),
('INS201', 20, 1.0),
('INS202', 55, 1.0),
('INS301', 65, 1.0),
('INS302', 15, 1.0),
('INS145', 85, 0.6);

INSERT INTO Attendance(studentID, courseID, percent_attendance) VALUES 
(1, 'IFT500', 95.0),
(2, 'IFT501', 96.0),
(3, 'IFT502', 72.5),
(4, 'IFT503', 50.8),
(5, 'IFT504', 95.0),
(6, 'IFT505', 96.0),
(7, 'IFT506', 72.5),
(8, 'IFT507', 50.8),
(9, 'IFT508', 40.6),
(10, 'IFT509', 95.0),
(11, 'IFT510', 96.0),
(12, 'IFT600', 72.5),
(13, 'IFT601', 50.8),
(14, 'IFT602', 40.6),
(15, 'IFT603', 95.0),
(16, 'IFT604', 96.0),
(17, 'IFT605', 72.5),
(18, 'IFT606', 50.8),
(19, 'IFT607', 40.6),
(20, 'IFT608', 95.0),
(21, 'IFT609', 96.0),
(22, 'IFT700', 72.5),
(23, 'IFT701', 50.8),
(24, 'IFT610', 40.6),
(25, 'IFT603', 95.0),
(26, 'IFT604', 96.0),
(27, 'IFT605', 72.5),
(28, 'IFT606', 50.8),
(29, 'IFT607', 40.6),
(30, 'IFT608', 95.0),
(31, 'IFT609', 96.0),
(32, 'IFT700', 72.5),
(33, 'IFT701', 50.8),
(34, 'IFT500', 40.6),
(35, 'IFT503', 95.0),
(36, 'IFT504', 96.0),
(37, 'IFT505', 72.5),
(38, 'IFT506', 50.8),
(39, 'IFT507', 40.6),
(40, 'IFT509', 95.0),
(41, 'IFT510', 96.0),
(42, 'IFT600', 72.5),
(43, 'IFT601', 50.8),
(44, 'IFT602', 40.6),
(45, 'IFT603', 95.0),
(46, 'IFT604', 96.0),
(47, 'IFT605', 72.5),
(48, 'IFT606', 50.8),
(49, 'IFT607', 40.6),
(50, 'IFT701', 40.6);

INSERT INTO Booking(courseID, studentID, bookingDate, bookingType) VALUES 
('IFT500', 1, '2021-01-21', 'CREDIT CARD'),
('IFT501', 2, '2021-01-12', 'DEBIT CARD'),
('IFT502', 3, '2020-06-29', 'BANK TRANSFER'),
('IFT503', 4, '2021-01-21', 'ONLINE BANKING'),
('IFT504', 5, '2021-01-12', 'CREDIT CARD'),
('IFT505', 6, '2020-06-29', 'DEBIT CARD'),
('IFT506', 7, '2021-01-21', 'BANK TRANSFER'),
('IFT507', 8, '2021-01-12', 'ONLINE BANKING'),
('IFT508', 9, '2020-06-29', 'CREDIT CARD'),
('IFT509', 10, '2021-01-21', 'DEBIT CARD'),
('IFT510', 11, '2021-01-21', 'ONLINE BANKING'),
('IFT600', 12, '2021-01-21', 'CREDIT CARD'),
('IFT601', 13, '2021-01-12', 'DEBIT CARD'),
('IFT602', 14, '2020-06-29', 'BANK TRANSFER'),
('IFT603', 15, '2021-01-21', 'ONLINE BANKING'),
('IFT604', 16, '2021-01-12', 'CREDIT CARD'),
('IFT605', 17, '2020-06-29', 'DEBIT CARD'),
('IFT606', 18, '2021-01-21', 'BANK TRANSFER'),
('IFT607', 19, '2021-01-12', 'ONLINE BANKING'),
('IFT608', 20, '2020-06-29', 'CREDIT CARD'),
('IFT609', 21, '2021-01-21', 'DEBIT CARD'),
('IFT700', 22, '2021-01-21', 'ONLINE BANKING'),
('IFT701', 23, '2021-01-12', 'DEBIT CARD'),
('IFT610', 24, '2021-01-21', 'ONLINE BANKING'),
('IFT603', 25, '2021-01-21', 'ONLINE BANKING'),
('IFT604', 26, '2021-01-12', 'CREDIT CARD'),
('IFT605', 27, '2020-06-29', 'DEBIT CARD'),
('IFT606', 28, '2021-01-21', 'BANK TRANSFER'),
('IFT607', 29, '2021-01-12', 'ONLINE BANKING'),
('IFT608', 30, '2020-06-29', 'CREDIT CARD'),
('IFT609', 31, '2021-01-21', 'DEBIT CARD'),
('IFT700', 32, '2021-01-21', 'ONLINE BANKING'),
('IFT701', 33, '2021-01-12', 'DEBIT CARD'),
('IFT500', 34, '2021-01-21', 'CREDIT CARD'),
('IFT503', 35, '2021-01-21', 'ONLINE BANKING'),
('IFT504', 36, '2021-01-12', 'CREDIT CARD'),
('IFT505', 37, '2020-06-29', 'DEBIT CARD'),
('IFT506', 38, '2021-01-21', 'BANK TRANSFER'),
('IFT507', 39, '2021-01-12', 'ONLINE BANKING'),
('IFT509', 40, '2021-01-21', 'DEBIT CARD'),
('IFT510', 41, '2021-01-21', 'ONLINE BANKING'),
('IFT600', 42, '2021-01-21', 'CREDIT CARD'),
('IFT601', 43, '2021-01-12', 'DEBIT CARD'),
('IFT602', 44, '2020-06-29', 'BANK TRANSFER'),
('IFT603', 45, '2021-01-21', 'ONLINE BANKING'),
('IFT604', 46, '2021-01-12', 'CREDIT CARD'),
('IFT605', 47, '2020-06-29', 'DEBIT CARD'),
('IFT606', 48, '2021-01-21', 'BANK TRANSFER'),
('IFT607', 49, '2021-01-12', 'ONLINE BANKING'),
('IFT701', 50, '2021-01-21', 'CREDIT CARD');

INSERT INTO CourseLevel(courseLevelCode, courseID, label, cost_per_credit) VALUES
('adv', 'IFT500', 'Advanced', 1500),
('int', 'IFT501', 'Intermediate', 1350),
('bgn', 'IFT502', 'Beginner', 1200),
('mst', 'IFT503', 'Masters', 1650),
('adv', 'IFT504', 'Advanced', 1500),
('int', 'IFT505', 'Intermediate', 1350),
('bgn', 'IFT505', 'Beginner', 1200),
('mst', 'IFT506', 'Masters', 1650),
('adv', 'IFT507', 'Advanced', 1500),
('int', 'IFT508', 'Intermediate', 1350),
('bgn', 'IFT509', 'Beginner', 1200),
('mst', 'IFT510', 'Masters', 1650),
('adv', 'IFT601', 'Advanced', 1500),
('int', 'IFT602', 'Intermediate', 1350),
('bgn', 'IFT603', 'Beginner', 1200),
('mst', 'IFT604', 'Masters', 1650),
('adv', 'IFT605', 'Advanced', 1500),
('int', 'IFT606', 'Intermediate', 1350),
('bgn', 'IFT607', 'Beginner', 1200),
('mst', 'IFT608', 'Masters', 1650),
('adv', 'IFT609', 'Advanced', 1500),
('int', 'IFT610', 'Intermediate', 1350),
('bgn', 'IFT700', 'Beginner', 1200),
('mst', 'IFT701', 'Masters', 1650);

INSERT INTO Center(centerID, classRoomID, courseID, centerName, centerPhoneNumber) VALUES 
('PLT', 'PLT201', 'IFT500', 'Peralta Hall', '480-156-2345'),
('PLT', 'PLT281', 'IFT501', 'Peralta Hall', '480-156-2345'),
('AGC', 'AGC301', 'IFT502', 'AgriCulture Building', '480-782-1675'),
('INS', 'INS145', 'IFT503', 'Infrastructure Building', '480-782-1675'),
('PLT', 'PLT201', 'IFT504', 'Peralta Hall', '480-156-2345'),
('PLT', 'PLT281', 'IFT505', 'Peralta Hall', '480-156-2345'),
('AGC', 'AGC301', 'IFT506', 'AgriCulture Building', '480-782-1675'),
('INS', 'INS145', 'IFT507', 'Infrastructure Building', '480-782-1675'),
('PLT', 'PLT201', 'IFT508', 'Peralta Hall', '480-156-2345'),
('PLT', 'PLT281', 'IFT509', 'Peralta Hall', '480-156-2345'),
('AGC', 'AGC301', 'IFT510', 'AgriCulture Building', '480-782-1675'),
('INS', 'INS145', 'IFT600', 'Infrastructure Building', '480-782-1675'),
('INS', 'INS145', 'IFT601', 'Infrastructure Building', '480-782-1675'),
('PLT', 'PLT201', 'IFT602', 'Peralta Hall', '480-156-2345'),
('PLT', 'PLT281', 'IFT603', 'Peralta Hall', '480-156-2345'),
('AGC', 'AGC301', 'IFT604', 'AgriCulture Building', '480-782-1675'),
('INS', 'INS145', 'IFT605', 'Infrastructure Building', '480-782-1675'),
('PLT', 'PLT201', 'IFT606', 'Peralta Hall', '480-156-2345'),
('PLT', 'PLT281', 'IFT607', 'Peralta Hall', '480-156-2345'),
('AGC', 'AGC301', 'IFT608', 'AgriCulture Building', '480-782-1675'),
('INS', 'INS145', 'IFT609', 'Infrastructure Building', '480-782-1675'),
('PLT', 'PLT201', 'IFT610', 'Peralta Hall', '480-156-2345'),
('PLT', 'PLT281', 'IFT700', 'Peralta Hall', '480-156-2345'),
('AGC', 'AGC301', 'IFT701', 'AgriCulture Building', '480-782-1675');

