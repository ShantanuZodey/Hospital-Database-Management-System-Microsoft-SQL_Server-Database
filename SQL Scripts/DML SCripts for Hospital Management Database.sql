USE HOSPITAL_MANAGEMENT_V4

/* INSERT SCRIPT FOR HOSPITAL_ADMIN */

BEGIN TRY
    BEGIN TRANSACTION
	INSERT INTO HOSPITAL_ADMIN VALUES('Brandy Hagenes', 1978253236, 'brandy.hagenes@yahoo.com');
INSERT INTO HOSPITAL_ADMIN VALUES('Geraldo Schumm', 9498602713, 'geraldo.schumm@yahoo.com');
INSERT INTO HOSPITAL_ADMIN VALUES('Jenice Satterfield', 6052122437, 'jenice.satterfield@yahoo.com');
INSERT INTO HOSPITAL_ADMIN VALUES('Cecille Aufderhar', 5679733830, 'cecille.aufderhar@yahoo.com');
INSERT INTO HOSPITAL_ADMIN VALUES('Cameron Schinner', 3192189003, 'cameron.schinner@yahoo.com');
INSERT INTO HOSPITAL_ADMIN VALUES('Daron Johns', 5013366101, 'daron.johns@yahoo.com');
    COMMIT TRAN -- Transaction Success!
END TRY
BEGIN CATCH
    IF @@TRANCOUNT > 0
        ROLLBACK TRAN --RollBack in case of Error

    -- <EDIT>: From SQL2008 on, you must raise error messages as follows:
    DECLARE @ErrorMessage NVARCHAR(4000);  
    DECLARE @ErrorSeverity INT;  
    DECLARE @ErrorState INT;  

    SELECT   
       @ErrorMessage = ERROR_MESSAGE(),  
       @ErrorSeverity = ERROR_SEVERITY(),  
       @ErrorState = ERROR_STATE();  

    RAISERROR (@ErrorMessage, @ErrorSeverity, @ErrorState);  
    -- </EDIT>
END CATCH





/* INSERT SCRIPT FOR PATIENT */

CREATE MASTER KEY ENCRYPTION BY PASSWORD = 'GROUP07_PASSWORD';
CREATE CERTIFICATE GROUP07_CERTIFICATE
WITH SUBJECT = 'GROUP07 HOSPITAL MANAGEMENT',
EXPIRY_DATE= '2022-08-30';
CREATE SYMMETRIC KEY GROUP07_Symmetrickey
WITH ALGORITHM= AES_128
ENCRYPTION BY CERTIFICATE GROUP07_Certificate;
OPEN SYMMETRIC KEY
GROUP07_Symmetrickey
DECRYPTION BY CERTIFICATE GROUP07_CERTIFICATE;

SELECT * FROM PATIENT

BEGIN TRY
    BEGIN TRANSACTION

INSERT INTO PATIENT VALUES( 'Onita', 'Murray', 'Langworth', '1973-07-04', 228, 127, 'F', 408, 'Patrick Neck', 'Greenshire', 'OH', 44485, 8168483635, EncryptByKey( Key_GUID('GROUP07_Symmetrickey'), CONVERT(varbinary,'zodeyshantanu@gmail.com')));
INSERT INTO PATIENT VALUES( 'Jeffry', 'Cummings', 'Boyer', '06-Feb-1980', 133, 162, 'F', 697, 'Barton Street', 'Domitilachester', 'GA', 31042, 1913425048, EncryptByKey( Key_GUID('GROUP07_Symmetrickey'), CONVERT(varbinary,'zodeyshantanu@gmail.com')));
INSERT INTO PATIENT VALUES( 'Domenic', 'Schmidt', 'Bednar', '29-Aug-1964', 330, 126, 'M', 475, 'Bayer Burg', 'South Luannechester', 'DE', 19931, 5712127297, EncryptByKey( Key_GUID('GROUP07_Symmetrickey'), CONVERT(varbinary,'zodeyshantanu@gmail.com')));
INSERT INTO PATIENT VALUES( 'Darryl', 'Josh', 'Reilly', '18-Sep-1996', 144, 167, 'M', 884, 'Min Station', 'Schneidertown', 'UT', 84523, 4349719735, EncryptByKey( Key_GUID('GROUP07_Symmetrickey'), CONVERT(varbinary,'zodeyshantanu@gmail.com')));
INSERT INTO PATIENT VALUES( 'Taryn', 'Rempel', 'Breitenberg', '25-Sep-1993', 167, 185, 'M', 554, 'Tammera Parkways', 'West Maliaport', 'TX', 78594, 1312903684, EncryptByKey( Key_GUID('GROUP07_Symmetrickey'), CONVERT(varbinary,'zodeyshantanu@gmail.com')));
INSERT INTO PATIENT VALUES( 'Danny', 'tyler', 'scott', '1993-07-05', 228, 127, 'M', 408, 'Patrick Neck', 'Greenshire', 'OH', 44485, 8168483635, EncryptByKey( Key_GUID('GROUP07_Symmetrickey'), CONVERT(varbinary,'zodeyshantanu@gmail.com')));
INSERT INTO PATIENT VALUES( 'Theodora', 'Greenfelder', 'DuBuque', '08-Sep-1983', 275, 171, 'F', 760, 'Pfannerstill Burg', 'West Robinview', 'CA', 92313, 5173095341, EncryptByKey( Key_GUID('GROUP07_Symmetrickey'), CONVERT(varbinary,'zodeyshantanu@gmail.com')));
INSERT INTO PATIENT VALUES( 'Torie', 'Jenice', 'Huel', '05-Jun-1966', 331, 156, 'F', 309, 'Davis Lodge', 'Thielchester', 'NV', 89145, 2348621386, EncryptByKey( Key_GUID('GROUP07_Symmetrickey'), CONVERT(varbinary,'zodeyshantanu@gmail.com')));
INSERT INTO PATIENT VALUES( 'Lowell', 'Bailey', 'Jaskolski', '03-Nov-1975', 289, 151, 'F', 187, 'Sheilah Highway', 'Erinberg', 'OK', 73024, 1732781752, EncryptByKey( Key_GUID('GROUP07_Symmetrickey'), CONVERT(varbinary,'zodeyshantanu@gmail.com')));
INSERT INTO PATIENT VALUES( 'Bree', 'Leuschke', 'Wuckert', '31-Dec-2000', 246, 153, 'M', 840, 'Veum Isle', 'New Feliciaborough', 'NM', 87565, 2709166578, EncryptByKey( Key_GUID('GROUP07_Symmetrickey'), CONVERT(varbinary,'zodeyshantanu@gmail.com')));
INSERT INTO PATIENT VALUES( 'Sean', 'Dach', 'Stracke', '10-Dec-1998', 221, 164, 'F', 265, 'Rickie Forges', 'Rolfsonview', 'SC', 29208, 1731515022, EncryptByKey( Key_GUID('GROUP07_Symmetrickey'), CONVERT(varbinary,'zodeyshantanu@gmail.com')));
INSERT INTO PATIENT VALUES( 'Trey', 'Gleichner', 'Deckow', '28-Jun-1988', 292, 133, 'NA', 915, 'Wm Mall', 'Altagraciashire', 'ID', 83635, 5095628048, EncryptByKey( Key_GUID('GROUP07_Symmetrickey'), CONVERT(varbinary,'zodeyshantanu@gmail.com')));
INSERT INTO PATIENT VALUES( 'Edelmira', 'Cristobal', 'Rutherford', '30-Apr-1997', 236, 156, 'M', 960, 'Collier Cove', 'Aubreyton', 'MA', 1522, 9209542798, EncryptByKey( Key_GUID('GROUP07_Symmetrickey'), CONVERT(varbinary,'zodeyshantanu@gmail.com')));
INSERT INTO PATIENT VALUES( 'Hoyt', 'Lavonda', 'Kiehn', '21-May-1982', 314, 160, 'M', 369, 'Cremin Brook', 'Gutmannmouth', 'OK', 74441, 1651417637, EncryptByKey( Key_GUID('GROUP07_Symmetrickey'), CONVERT(varbinary,'zodeyshantanu@gmail.com')));
INSERT INTO PATIENT VALUES( 'Max', 'Gleichner', 'Dickinson', '07-Nov-2001', 326, 165, 'F', 125, 'Grimes Turnpike', 'Claudiomouth', 'TX', 79927, 9723091766, EncryptByKey( Key_GUID('GROUP07_Symmetrickey'), CONVERT(varbinary,'zodeyshantanu@gmail.com')));
INSERT INTO PATIENT VALUES( 'Haywood', 'Hickle', 'Satterfield', '26-Dec-1961', 232, 200, 'F', 413, 'Angelica Mills', 'South Toraland', 'NE', 69033, 6366091879, EncryptByKey( Key_GUID('GROUP07_Symmetrickey'), CONVERT(varbinary,'zodeyshantanu@gmail.com')));
INSERT INTO PATIENT VALUES( 'Jacalyn', 'Zulauf', 'Hyatt', '05-May-1989', 93, 192, 'F', 200, 'Jack Curve', 'Dachport', 'NE', 68023, 3109843905, EncryptByKey( Key_GUID('GROUP07_Symmetrickey'), CONVERT(varbinary,'zodeyshantanu@gmail.com')));
INSERT INTO PATIENT VALUES( 'Guy', 'Renner', 'Monahan', '09-Nov-1994', 157, 167, 'M', 836, 'Maggio Harbors', 'West Winstonview', 'CO', 80160, 2567730143, EncryptByKey( Key_GUID('GROUP07_Symmetrickey'), CONVERT(varbinary,'zodeyshantanu@gmail.com')));
INSERT INTO PATIENT VALUES( 'Guy', 'Nancee', 'Lockman', '24-Aug-1962', 145, 201, 'M', 778, 'Vincent Motorway', 'Lake Oneida', 'NE', 68136, 3347188220, EncryptByKey( Key_GUID('GROUP07_Symmetrickey'), CONVERT(varbinary,'zodeyshantanu@gmail.com')));
INSERT INTO PATIENT VALUES( 'Roscoe', 'Turcotte', 'Wisozk', '11-Nov-1983', 299, 121, 'F', 673, 'Osinski Mountains', 'Jessville', 'OR', 97115, 5034011533, EncryptByKey( Key_GUID('GROUP07_Symmetrickey'), CONVERT(varbinary,'zodeyshantanu@gmail.com')));
INSERT INTO PATIENT VALUES( 'Leslee', 'Boyle', 'Zboncak', '02-Nov-1962', 296, 176, 'M', 698, 'Jesus Estate', 'South Rozella', 'WA', 98257, 1915813529, EncryptByKey( Key_GUID('GROUP07_Symmetrickey'), CONVERT(varbinary,'zodeyshantanu@gmail.com')));
INSERT INTO PATIENT VALUES( 'Teodoro', 'Simonis', 'Doyle', '27-Jun-1968', 97, 188, 'F', 982, 'Domingo Summit', 'Yoshikotown', 'UT', 84014, 9257046301, EncryptByKey( Key_GUID('GROUP07_Symmetrickey'), CONVERT(varbinary,'zodeyshantanu@gmail.com')));
INSERT INTO PATIENT VALUES( 'Chang', 'Koepp', 'Howe', '04-Nov-1995', 221, 179, 'F', 121, 'West Place', 'Port Vaughn', 'IN', 46619, 6189122025, EncryptByKey( Key_GUID('GROUP07_Symmetrickey'), CONVERT(varbinary,'zodeyshantanu@gmail.com')));
INSERT INTO PATIENT VALUES( 'Veronique', 'Zulauf', 'Jaskolski', '14-Sep-2002', 127, 141, 'F', 409, 'Buckridge Expressway', 'Moenstad', 'NE', 68628, 9063093987, EncryptByKey( Key_GUID('GROUP07_Symmetrickey'), CONVERT(varbinary,'zodeyshantanu@gmail.com')));
INSERT INTO PATIENT VALUES( 'Hermelinda', 'Nader', 'Blanda', '02-Dec-1968', 98, 172, 'F', 82, 'Champlin Ferry', 'Wardville', 'VA', 24155, 2167744265, EncryptByKey( Key_GUID('GROUP07_Symmetrickey'), CONVERT(varbinary,'zodeyshantanu@gmail.com')));
INSERT INTO PATIENT VALUES( 'Ghislaine', 'Santiago', 'Upton', '19-Jun-1997', 101, 143, 'F', 897, 'Trenton Estates', 'Willischester', 'OH', 44802, 1562970729, EncryptByKey( Key_GUID('GROUP07_Symmetrickey'), CONVERT(varbinary,'zodeyshantanu@gmail.com')));
INSERT INTO PATIENT VALUES( 'Barton', 'Erdman', 'Mraz', '21-Nov-1991', 268, 193, 'M', 250, 'Novella Springs', 'Yvoneborough', 'VA', 23605, 9047577679, EncryptByKey( Key_GUID('GROUP07_Symmetrickey'), CONVERT(varbinary,'zodeyshantanu@gmail.com')));
INSERT INTO PATIENT VALUES( 'Ervin', 'Romaguera', 'DuBuque', '19-Nov-1998', 174, 145, 'F', 539, 'Terence Plains', 'New Bomouth', 'CT', 6922, 1906478190, EncryptByKey( Key_GUID('GROUP07_Symmetrickey'), CONVERT(varbinary,'zodeyshantanu@gmail.com')));
INSERT INTO PATIENT VALUES( 'Buena', 'Howell', 'Senger', '27-Nov-1983', 282, 173, 'NA', 325, 'Lindgren Oval', 'Kunzemouth', 'MA', 2643, 1541217621, EncryptByKey( Key_GUID('GROUP07_Symmetrickey'), CONVERT(varbinary,'zodeyshantanu@gmail.com')));
INSERT INTO PATIENT VALUES( 'Emmett', 'Carter', 'Miller', '02-Oct-1984', 83, 149, 'F', 610, 'Hettinger Circles', 'South Brett', 'CO', 80244, 6417850015, EncryptByKey( Key_GUID('GROUP07_Symmetrickey'), CONVERT(varbinary,'zodeyshantanu@gmail.com')));
INSERT INTO PATIENT VALUES( 'Kemberly', 'Hubert', 'Ankunding', '10-Jul-1982', 163, 184, 'F', 305, 'Ondricka Squares', 'Port Sabramouth', 'CT', 6379, 6189368375, EncryptByKey( Key_GUID('GROUP07_Symmetrickey'), CONVERT(varbinary,'zodeyshantanu@gmail.com')));
INSERT INTO PATIENT VALUES( 'Samual', 'Stehr', 'Zulauf', '09-Dec-1998', 333, 187, 'F', 201, 'Duncan Causeway', 'Garrettfurt', 'IN', 46819, 1206205359, EncryptByKey( Key_GUID('GROUP07_Symmetrickey'), CONVERT(varbinary,'zodeyshantanu@gmail.com')));
INSERT INTO PATIENT VALUES( 'Elvera', 'Kuhic', 'Johnston', '26-May-1957', 237, 157, 'F', 823, 'Paris Glen', 'New Ja', 'IA', 51548, 7042765208, EncryptByKey( Key_GUID('GROUP07_Symmetrickey'), CONVERT(varbinary,'zodeyshantanu@gmail.com')));
INSERT INTO PATIENT VALUES( 'Robin', 'Emmerich', 'Nader', '21-May-1958', 301, 142, 'M', 108, 'Ullrich Stravenue', 'North Terresaborough', 'ID', 83403, 1714979631, EncryptByKey( Key_GUID('GROUP07_Symmetrickey'), CONVERT(varbinary,'zodeyshantanu@gmail.com')));
INSERT INTO PATIENT VALUES( 'Arnold', 'Stark', 'Schulist', '28-Sep-1985', 147, 124, 'M', 894, 'Deckow Islands', 'Ellsworthhaven', 'WY', 82242, 3519521027, EncryptByKey( Key_GUID('GROUP07_Symmetrickey'), CONVERT(varbinary,'zodeyshantanu@gmail.com')));
INSERT INTO PATIENT VALUES( 'Lilli', 'Wiegand', 'Skiles', '15-Jul-1997', 332, 122, 'F', 535, 'Caitlyn Ranch', 'Homenickview', 'MS', 39213, 5019168878, EncryptByKey( Key_GUID('GROUP07_Symmetrickey'), CONVERT(varbinary,'zodeyshantanu@gmail.com')));
INSERT INTO PATIENT VALUES( 'Roland', 'McDermott', 'Braun', '31-Dec-1983', 148, 163, 'F', 610, 'Cherry Branch', 'West Joseph', 'OK', 73573, 2536184653, EncryptByKey( Key_GUID('GROUP07_Symmetrickey'), CONVERT(varbinary,'zodeyshantanu@gmail.com')));
INSERT INTO PATIENT VALUES( 'Renaldo', 'Halvorson', 'Ebert', '20-Jan-1969', 242, 158, 'NA', 19, 'Nienow Flat', 'East Yaelborough', 'CO', 81155, 9102195536, EncryptByKey( Key_GUID('GROUP07_Symmetrickey'), CONVERT(varbinary,'zodeyshantanu@gmail.com')));
INSERT INTO PATIENT VALUES( 'Keith', 'White', 'Jast', '28-Mar-1959', 102, 154, 'F', 392, 'Rempel Hill', 'Katieburgh', 'OK', 73744, 6154194742, EncryptByKey( Key_GUID('GROUP07_Symmetrickey'), CONVERT(varbinary,'zodeyshantanu@gmail.com')));
INSERT INTO PATIENT VALUES( 'Marisha', 'Alton', 'Parker', '12-Oct-1962', 257, 197, 'F', 714, 'Carter Road', 'Port Mikaela', 'NM', 87061, 5055575943, EncryptByKey( Key_GUID('GROUP07_Symmetrickey'), CONVERT(varbinary,'zodeyshantanu@gmail.com')));

    COMMIT TRAN -- Transaction Success!
END TRY
BEGIN CATCH
    IF @@TRANCOUNT > 0
        ROLLBACK TRAN --RollBack in case of Error

    -- <EDIT>: From SQL2008 on, you must raise error messages as follows:
    DECLARE @ErrorMessage2 NVARCHAR(4000);  
    DECLARE @ErrorSeverity2 INT;  
    DECLARE @ErrorState2 INT;  

    SELECT   
       @ErrorMessage2 = ERROR_MESSAGE(),  
       @ErrorSeverity2 = ERROR_SEVERITY(),  
       @ErrorState2 = ERROR_STATE();  

    RAISERROR (@ErrorMessage, @ErrorSeverity, @ErrorState);  
    -- </EDIT>
END CATCH




/* INSERT SCRIPT FOR DEPARTMENT */

BEGIN TRY
    BEGIN TRANSACTION

INSERT INTO DEPARTMENT VALUES('General Internal Medicine',100);
INSERT INTO DEPARTMENT VALUES('Cardiology',100);
INSERT INTO DEPARTMENT VALUES('Dermatology',100);
INSERT INTO DEPARTMENT VALUES('Endocrinology',100);
INSERT INTO DEPARTMENT VALUES('Gastroenterology',100);
INSERT INTO DEPARTMENT VALUES('Oncology',100);
INSERT INTO DEPARTMENT VALUES('Epidemiology',100);
INSERT INTO DEPARTMENT VALUES('Nephrology',100);
INSERT INTO DEPARTMENT VALUES('Pharmacology',100);
INSERT INTO DEPARTMENT VALUES('Pulmonology',100);
INSERT INTO DEPARTMENT VALUES('Rheumatology',100);
INSERT INTO DEPARTMENT VALUES('ER',100);
INSERT INTO DEPARTMENT VALUES('Haemotology',100);
INSERT INTO DEPARTMENT VALUES('Radiology',100);
INSERT INTO DEPARTMENT VALUES('Gynecology',100);
INSERT INTO DEPARTMENT VALUES('Intensive Care Unit',100);
INSERT INTO DEPARTMENT VALUES('Neonatal',100);
INSERT INTO DEPARTMENT VALUES('Neurology',100);
INSERT INTO DEPARTMENT VALUES('Ophthalmology',100);
INSERT INTO DEPARTMENT VALUES('Orthopaedics',100);
INSERT INTO DEPARTMENT VALUES('Urology',100);
INSERT INTO DEPARTMENT VALUES('Anesthesiology',100);
INSERT INTO DEPARTMENT VALUES('Dental Medicine',100);
INSERT INTO DEPARTMENT VALUES('Pediatrics',100);
INSERT INTO DEPARTMENT VALUES('Trauma',100);
INSERT INTO DEPARTMENT VALUES('ENT',100);

    COMMIT TRAN -- Transaction Success!
END TRY
BEGIN CATCH
    IF @@TRANCOUNT > 0
        ROLLBACK TRAN --RollBack in case of Error

    -- <EDIT>: From SQL2008 on, you must raise error messages as follows:
    DECLARE @ErrorMessage3 NVARCHAR(4000);  
    DECLARE @ErrorSeverity3 INT;  
    DECLARE @ErrorState3 INT;  

    SELECT   
       @ErrorMessage3 = ERROR_MESSAGE(),  
       @ErrorSeverity3 = ERROR_SEVERITY(),  
       @ErrorState3 = ERROR_STATE();  

    RAISERROR (@ErrorMessage, @ErrorSeverity, @ErrorState);  
    -- </EDIT>
END CATCH


/* INSERT SCRIPT FOR DOCTOR */

BEGIN TRY
    BEGIN TRANSACTION

INSERT INTO DOCTOR VALUES(3002, 'Lupe', 'Anneliese', 'Waelchi', 1304816124, 'lupe.waelchi@yahoo.com', 'Junior', 3, 1);
INSERT INTO DOCTOR VALUES(3003, 'Florentina', 'Botsford', 'Homenick', 9175022721, 'florentina.homenick@yahoo.com', 'Junior', 2, 1);
INSERT INTO DOCTOR VALUES(3004, 'Temple', 'Murphy', 'Wisoky', 7243015231, 'temple.wisoky@yahoo.com', 'Senior',7,39);
INSERT INTO DOCTOR VALUES(3005, 'Brendan', 'Shanahan', 'McDermott', 5162271847, 'brendan.mcdermott@yahoo.com', 'Senior',10, 23);
INSERT INTO DOCTOR VALUES(3000, 'Nidia', 'Lynch', 'Schmeler', 3056827291, 'nidia.schmeler@yahoo.com', 'Junior',2,38);
INSERT INTO DOCTOR VALUES(3001, 'Leonard', 'Deann', 'Balistreri', 6199136070, 'leonard.balistreri@yahoo.com','Junior', 4, 32);
INSERT INTO DOCTOR VALUES(3010, 'Hollis', 'Rempel', 'Klein', 7188641172, 'hollis.klein@yahoo.com', 'Senior', 6,63);
INSERT INTO DOCTOR VALUES(3005, 'Leonel', 'Hessel', 'Davis',  5173361614, 'leonel.davis@yahoo.com', 'Junior', 1, 55);
INSERT INTO DOCTOR VALUES(3007, 'Ranee', 'Botsford', 'Huels', 1870808919, 'ranee.huels@yahoo.com', 'Junior', 2, 55);
INSERT INTO DOCTOR VALUES(3012, 'Marx', 'Green', 'Marvin', 9016010244, 'marx.marvin@yahoo.com', 'Junior',3, 69);
INSERT INTO DOCTOR VALUES(3011, 'Russ', 'Shanahan', 'Mertz', 1478563818, 'russ.mertz@yahoo.com', 'Senior',10, 84);
INSERT INTO DOCTOR VALUES(3009, 'Marisha', 'Koelpin', 'Carter', 2099595818, 'marisha.carter@yahoo.com', 'Senior',12, 80);
INSERT INTO DOCTOR VALUES(3001, 'Roma', 'Lura', 'Fahey', 7857169644, 'roma.fahey@yahoo.com', 'Senior',15, 47);
INSERT INTO DOCTOR VALUES(3020, 'Sanjuana', 'Shanahan', 'Dach', 8563312155, 'sanjuana.dach@yahoo.com', 'Junior',5, 74);
INSERT INTO DOCTOR VALUES(3021, 'Ethan', 'Walker', 'Dicki', 4076465015, 'ethan.dicki@yahoo.com', 'Senior',15, 87);
INSERT INTO DOCTOR VALUES(3022, 'Larry', 'Lynch', 'Hilpert', 1914518125, 'larry.hilpert@yahoo.com', 'Senior', 19,76);
INSERT INTO DOCTOR VALUES(3023, 'Frida', 'West', 'Schaefer', 1941704535, 'frida.schaefer@yahoo.com', 'Junior',4, 61);
INSERT INTO DOCTOR VALUES(3024, 'Rafaela', 'Harry', 'Beer', 1856336956, 'rafaela.beer@yahoo.com', 'Junior',5, 38);
INSERT INTO DOCTOR VALUES(3025, 'Andre', 'Pagac', 'Kshlerin', 1928707466, 'andre.kshlerin@yahoo.com', 'Senior',10, 32);
INSERT INTO DOCTOR VALUES(3019, 'Jerry', 'Hahn', 'Mohr', 1608754906, 'jerry.mohr@yahoo.com', 'Senior',10, 45);
INSERT INTO DOCTOR VALUES(3018, 'Kenia', 'Baumbach', 'Schuster', 9478147245, 'kenia.schuster@yahoo.com', 'Senior',12, 45);
INSERT INTO DOCTOR VALUES(3017, 'Dreama', 'Pagac', 'Abbott', 7702761822, 'dreama.abbott@yahoo.com', 'Senior',15, 17);
INSERT INTO DOCTOR VALUES(3016, 'Parker', 'Sanford', 'Bailey', 5629186352, 'parker.bailey@yahoo.com', 'Junior',3, 64);
INSERT INTO DOCTOR VALUES(3015, 'Adam', 'Jenkins', 'McGlynn', 4154148490, 'adam.mcglynn@yahoo.com', 'Junior',4, 21);
INSERT INTO DOCTOR VALUES(3014, 'Wilburn', 'Conroy', 'Pouros', 1760518312, 'wilburn.pouros@yahoo.com', 'Senior',8, 53);
INSERT INTO DOCTOR VALUES(3013, 'Jennell', 'Ryan', 'Metz', 7724103609, 'jennell.metz@yahoo.com', 'Senior',10, 7);
INSERT INTO DOCTOR VALUES(3008, 'Terry', 'Adolfo', 'Cruickshank', 3174703398, 'terry.cruickshank@yahoo.com', 'Senior',16, 55);
INSERT INTO DOCTOR VALUES(3012, 'Jc', 'Lang', 'Schmidt', 3179802715, 'jc.schmidt@yahoo.com', 'Junior',1, 56);
INSERT INTO DOCTOR VALUES(3006, 'Serafina', 'Fisher', 'Ankunding', 9496090197, 'serafina.ankunding@yahoo.com', 'Junior',3, 26);
INSERT INTO DOCTOR VALUES(3000, 'Valentin', 'Jordan', 'Hessel', 5072487932, 'valentin.hessel@yahoo.com', 'Junior',5, 44);
INSERT INTO DOCTOR VALUES(3010, 'Delbert', 'Jast', 'Emard', 5673309205, 'delbert.emard@yahoo.com', 'Senior',12, 70);
INSERT INTO DOCTOR VALUES(3011, 'Armida', 'Baumbach', 'Huels', 3186614692, 'armida.huels@yahoo.com', 'Junior',4, 49);
INSERT INTO DOCTOR VALUES(3012, 'Edison', 'Carroll', 'Jakubowski', 6316309755, 'edison.jakubowski@yahoo.com', 'Junior',5, 43);
INSERT INTO DOCTOR VALUES(3013, 'Joshua', 'Rolfson', 'McDermott', 4155853041, 'joshua.mcdermott@yahoo.com', 'Senior', 8, 46);
INSERT INTO DOCTOR VALUES(3014, 'Carolann', 'Stanton', 'Mohr', 2183868761, 'carolann.mohr@yahoo.com', 'Senior',12, 26);
INSERT INTO DOCTOR VALUES(3015, 'Tabitha', 'Kub', 'Schaefer', 8473144158, 'tabitha.schaefer@yahoo.com', 'Senior',14, 44);
INSERT INTO DOCTOR VALUES(3016, 'Rashad', 'Emard', 'Abbott', 3527730531, 'rashad.abbott@yahoo.com', 'Senior',12, 30);
INSERT INTO DOCTOR VALUES(3017, 'Nada', 'Stanton', 'Davis', 9897155118, 'nada.davis@yahoo.com', 'Junior',3, 3);
INSERT INTO DOCTOR VALUES(3018, 'Cristy', 'White', 'Robel', 5018086486, 'cristy.robel@yahoo.com', 'Junior',5, 14);
INSERT INTO DOCTOR VALUES(3019, 'Argentina', 'McCullough', 'Hoppe', 6068284225, 'argentina.hoppe@yahoo.com', 'Senior',18, 7);

    COMMIT TRAN -- Transaction Success!
END TRY
BEGIN CATCH
    IF @@TRANCOUNT > 0
        ROLLBACK TRAN --RollBack in case of Error

    -- <EDIT>: From SQL2008 on, you must raise error messages as follows:
    DECLARE @ErrorMessage4 NVARCHAR(4000);  
    DECLARE @ErrorSeverity4 INT;  
    DECLARE @ErrorState4 INT;  

    SELECT   
       @ErrorMessage4 = ERROR_MESSAGE(),  
       @ErrorSeverity4 = ERROR_SEVERITY(),  
       @ErrorState4 = ERROR_STATE();  

    RAISERROR (@ErrorMessage, @ErrorSeverity, @ErrorState);  
    -- </EDIT>
END CATCH


/* INSERT SCRIPT FOR DOCTOR SCHEDULE */

BEGIN TRY
    BEGIN TRANSACTION

INSERT INTO DOCTOR_SCHEDULE VALUES('2021-10-15','08:00:00','08:30:00', 'Cancelled',4000);
INSERT INTO DOCTOR_SCHEDULE VALUES('2021-10-16','07:30:00','08:00:00', 'Available',4001);
INSERT INTO DOCTOR_SCHEDULE VALUES('2021-10-20','18:30:00','19:00:00', 'Available',4002);
INSERT INTO DOCTOR_SCHEDULE VALUES('2021-10-23','12:05:00','12:30:00', 'Cancelled',4010);
INSERT INTO DOCTOR_SCHEDULE VALUES('2021-10-23','17:10:00','17:30:00', 'Available',4003);
INSERT INTO DOCTOR_SCHEDULE VALUES('2021-10-28','08:30:00','09:00:00', 'Available',4004);
INSERT INTO DOCTOR_SCHEDULE VALUES('2021-10-29','09:00:00','09:30:00', 'Cancelled',4005);
INSERT INTO DOCTOR_SCHEDULE VALUES('2021-11-01','11:15:00','11:40:00', 'Cancelled',4006);
INSERT INTO DOCTOR_SCHEDULE VALUES('2021-11-05','14:35:00','15:05:00', 'Available',4007);
INSERT INTO DOCTOR_SCHEDULE VALUES('2021-11-18','16:40:00','17:10:00', 'Available',4008);
INSERT INTO DOCTOR_SCHEDULE VALUES('2021-11-22','12:00:00','12:30:00', 'Available',4009);
INSERT INTO DOCTOR_SCHEDULE VALUES('2021-11-23','07:30:00','08:00:00', 'Cancelled',4011);
INSERT INTO DOCTOR_SCHEDULE VALUES('2021-11-23','10:10:00','10:40:00', 'Available',4012);
INSERT INTO DOCTOR_SCHEDULE VALUES('2021-11-24','09:00:00','09:30:00', 'Cancelled',4013);
INSERT INTO DOCTOR_SCHEDULE VALUES('2021-11-25','10:45:00','11:15:00', 'Cancelled',4014);
INSERT INTO DOCTOR_SCHEDULE VALUES('2021-11-28','13:50:00','14:20:00', 'Available',4015);
INSERT INTO DOCTOR_SCHEDULE VALUES('2021-11-30','14:00:00','14:30:00', 'Available',4016);
INSERT INTO DOCTOR_SCHEDULE VALUES('2021-12-01','09:15:00','09:45:00', 'Cancelled',4017);
INSERT INTO DOCTOR_SCHEDULE VALUES('2021-12-01','15:35:00','16:00:00', 'Available',4018);
INSERT INTO DOCTOR_SCHEDULE VALUES('2021-12-02','11:20:00','12:00:00', 'Available',4019);
INSERT INTO DOCTOR_SCHEDULE VALUES('2021-12-03','08:20:00','09:00:00', 'Available',4020);
INSERT INTO DOCTOR_SCHEDULE VALUES('2021-12-05','08:00:00','08:30:00', 'Available',4021);
INSERT INTO DOCTOR_SCHEDULE VALUES('2021-12-06','08:30:00','09:00:00', 'Available',4022);
INSERT INTO DOCTOR_SCHEDULE VALUES('2021-12-07','09:00:00','10:00:00', 'Available',4023);
INSERT INTO DOCTOR_SCHEDULE VALUES('2021-12-07','14:15:00','15:00:00', 'Available',4024);
INSERT INTO DOCTOR_SCHEDULE VALUES('2021-12-08','10:10:00','11:00:00', 'Available',4025);
INSERT INTO DOCTOR_SCHEDULE VALUES('2021-12-08','11:30:00','12:00:00', 'Available',4026);
INSERT INTO DOCTOR_SCHEDULE VALUES('2021-12-10','13:20:00','14:00:00', 'Available',4027);
INSERT INTO DOCTOR_SCHEDULE VALUES('2021-12-11','10:40:00','12:00:00', 'Available',4028);
INSERT INTO DOCTOR_SCHEDULE VALUES('2021-12-12','13:40:00','14:30:00', 'Available',4029);
INSERT INTO DOCTOR_SCHEDULE VALUES('2021-12-12','14:45:00','15:30:00', 'Available',4030);
INSERT INTO DOCTOR_SCHEDULE VALUES('2021-12-13','11:00:00','11:20:00', 'Available',4031);
INSERT INTO DOCTOR_SCHEDULE VALUES('2021-12-13','11:00:00','11:30:00', 'Available',4032);
INSERT INTO DOCTOR_SCHEDULE VALUES('2021-12-14','08:30:00','09:15:00', 'Available',4033);
INSERT INTO DOCTOR_SCHEDULE VALUES('2021-12-15','16:05:00','16:50:00', 'Available',4034);
INSERT INTO DOCTOR_SCHEDULE VALUES('2021-12-16','15:15:00','16:00:00', 'Available',4035);
INSERT INTO DOCTOR_SCHEDULE VALUES('2021-12-17','09:20:00','10:00:00', 'Available',4036);
INSERT INTO DOCTOR_SCHEDULE VALUES('2021-12-18','10:00:00','10:50:00', 'Available',4037);
INSERT INTO DOCTOR_SCHEDULE VALUES('2021-12-19','10:20:00','11:00:00', 'Available',4038);
INSERT INTO DOCTOR_SCHEDULE VALUES('2021-12-20','08:00:00','09:00:00', 'Available',4039);

    COMMIT TRAN -- Transaction Success!
END TRY
BEGIN CATCH
    IF @@TRANCOUNT > 0
        ROLLBACK TRAN --RollBack in case of Error

    -- <EDIT>: From SQL2008 on, you must raise error messages as follows:
    DECLARE @ErrorMessage5 NVARCHAR(4000);  
    DECLARE @ErrorSeverity5 INT;  
    DECLARE @ErrorState5 INT;  

    SELECT   
       @ErrorMessage5 = ERROR_MESSAGE(),  
       @ErrorSeverity5 = ERROR_SEVERITY(),  
       @ErrorState5 = ERROR_STATE();  

    RAISERROR (@ErrorMessage, @ErrorSeverity, @ErrorState);  
    -- </EDIT>
END CATCH

/* INSERT SCRIPT FOR APPOINTMENT SCHEDULE */

BEGIN TRY
    BEGIN TRANSACTION

	
Insert into APPOINTMENT_SCHEDULING Values ('7006','5009','101','2021-10-28 07:30:00.000','07:30:00','12:30:00','Booked','TEST', 'I');
Insert into APPOINTMENT_SCHEDULING Values ('7007','5010','101','2021-10-28 08:30:00.000','08:30:00','08:50:00','Booked','TEST', 'O');
Insert into APPOINTMENT_SCHEDULING Values ('7008','5011','101','2021-11-05 14:35:00.000','14:35:00','19:50:00','Booked','TEST', 'I');
Insert into APPOINTMENT_SCHEDULING Values ('7009','5012','101','2021-11-18 16:40:00.000','20:30:00','17:50:00','Booked','TEST', 'I');
Insert into APPOINTMENT_SCHEDULING Values ('7010','5013','101','2021-11-22 12:00:00.000','12:00:00','19:50:00','Booked','TEST', 'I');
Insert into APPOINTMENT_SCHEDULING Values ('7011','5014','101','2021-10-29 14:30:00.000','14:30:00','14:50:00','Booked','TEST', 'O');
Insert into APPOINTMENT_SCHEDULING Values ('7012','5015','101','2021-11-23 10:10:00.000','10:10:00','10:20:00','Booked','TEST', 'O');
Insert into APPOINTMENT_SCHEDULING Values ('7013','5016','101','2021-10-30 09:30:00.000','09:30:00','09:50:00','Booked','TEST', 'O');
Insert into APPOINTMENT_SCHEDULING Values ('7014','5017','101','2021-10-30 10:30:00.000','10:30:00','10:55:00','Booked','TEST', 'O');
Insert into APPOINTMENT_SCHEDULING Values ('7015','5018','101','2021-11-28 13:50:00.000','13:50:00','18:50:00','Booked','TEST', 'I');
Insert into APPOINTMENT_SCHEDULING Values ('7016','5019','101','2021-11-30 14:00:00.000','14:00:00','22:50:00','Booked','TEST', 'I');
Insert into APPOINTMENT_SCHEDULING Values ('7017','5020','101','2021-10-31 14:30:00.000','14:30:00','23:50:00','Booked','TEST', 'I');
Insert into APPOINTMENT_SCHEDULING Values ('7018','5021','101','2021-12-01 15:35:00.000','15:35:00','19:40:00','Booked','TEST', 'I');
Insert into APPOINTMENT_SCHEDULING Values ('7019','5022','101','2021-12-02 11:20:00.000','11:20:00','19:50:00','Booked','TEST', 'I');
Insert into APPOINTMENT_SCHEDULING Values ('7020','5023','101','2021-11-01 12:30:00.000','12:30:00','18:45:00','Booked','TEST', 'I');
Insert into APPOINTMENT_SCHEDULING Values ('7021','5024','101','2021-11-02 11:30:00.000','11:30:00','16:45:00','Booked','TEST', 'I');
Insert into APPOINTMENT_SCHEDULING Values ('7022','5025','101','2021-11-02 12:30:00.000','12:30:00','12:50:00','Booked','TEST', 'O');
Insert into APPOINTMENT_SCHEDULING Values ('7023','5026','101','2021-11-02 15:30:00.000','15:30:00','15:40:00','Booked','TEST', 'O');
Insert into APPOINTMENT_SCHEDULING Values ('7008','5030','101','2021-11-05 20:35:00.000','20:35:00','13:50:00','Booked','TEST', 'I');
Insert into APPOINTMENT_SCHEDULING Values ('7008','5031','101','2021-11-06 09:35:00.000','09:35:00','09:50:00','Booked','TEST', 'O');
Insert into APPOINTMENT_SCHEDULING Values ('7008','5032','101','2021-11-06 12:35:00.000','12:35:00','19:15:00','Booked','TEST', 'I');
Insert into APPOINTMENT_SCHEDULING Values ('7008','5033','101','2021-11-06 19:35:00.000','19:35:00','19:55:00','Booked','TEST', 'O');
Insert into APPOINTMENT_SCHEDULING Values ('7019','5034','101','2021-12-03 08:20:00.000','08:20:00','19:50:00','Booked','TEST', 'I');
Insert into APPOINTMENT_SCHEDULING Values ('7019','5035','101','2021-12-03 20:20:00.000','20:20:00','20:50:00','Booked','TEST', 'O');
Insert into APPOINTMENT_SCHEDULING Values ('7019','5036','101','2021-12-04 12:50:00.000','12:50:00','19:50:00','Booked','TEST', 'I');
Insert into APPOINTMENT_SCHEDULING Values ('7022','5037','101','2021-11-02 14:30:00.000','14:30:00','19:50:00','Booked','TEST', 'I');
Insert into APPOINTMENT_SCHEDULING Values ('7022','5038','101','2021-11-02 20:30:00.000','20:30:00','21:10:00','Booked','TEST', 'O');
Insert into APPOINTMENT_SCHEDULING Values ('7022','5039','101','2021-11-03 09:30:00.000','09:30:00','21:10:00','Booked','TEST', 'I');
Insert into APPOINTMENT_SCHEDULING Values ('7023','5040','101','2021-11-03 09:30:00.000','09:30:00','10:10:00','Booked','TEST', 'O');

    COMMIT TRAN -- Transaction Success!
END TRY
BEGIN CATCH
    IF @@TRANCOUNT > 0
        ROLLBACK TRAN --RollBack in case of Error

    -- <EDIT>: From SQL2008 on, you must raise error messages as follows:
    DECLARE @ErrorMessage6 NVARCHAR(4000);  
    DECLARE @ErrorSeverity6 INT;  
    DECLARE @ErrorState6 INT;  

    SELECT   
       @ErrorMessage6 = ERROR_MESSAGE(),  
       @ErrorSeverity6 = ERROR_SEVERITY(),  
       @ErrorState6 = ERROR_STATE();  

    RAISERROR (@ErrorMessage, @ErrorSeverity, @ErrorState);  
    -- </EDIT>
END CATCH



/* INSERT SCRIPT FOR LAB */

BEGIN TRY
    BEGIN TRANSACTION

INSERT INTO LAB VALUES ('Boston Clinical Laboratories','Complete Blood Count(CBC)','Complete Blood Count(CBC)','101')
INSERT INTO LAB VALUES ('Boston Clinical Laboratories','Prothrombin Time','Prothrombin Time','101')
INSERT INTO LAB VALUES ('Boston Clinical Laboratories','Basic Metabolic Panel','Basic Metabolic Panel','101')
INSERT INTO LAB VALUES ('Boston Clinical Laboratories','Comprehensive Metabolic Panel','Comprehensive Metabolic Panel','101')
INSERT INTO LAB VALUES ('Wallgreens','Lipid Panel','Lipid Panel','104')
INSERT INTO LAB VALUES ('Wallgreens','Liver Panel','Liver Panel','104')
INSERT INTO LAB VALUES ('Wallgreens','Thyroid Stimulating Hormone','Thyroid Stimulating Hormone','104')
INSERT INTO LAB VALUES ('Wallgreens','Hemoglobin A1C','Hemoglobin A1C','104')
INSERT INTO LAB VALUES ('Wallgreens','Urinalysis','Urinalysis','104')
INSERT INTO LAB VALUES ('Quest Diagnostics','Echo','Echo','102')
INSERT INTO LAB VALUES ('Quest Diagnostics','ECG','ECG','102')
INSERT INTO LAB VALUES ('Quest Diagnostics','CT Scan','CT Scan','102')
INSERT INTO LAB VALUES ('Quest Diagnostics','Bone Densitometry','Bone Densitometry','102')
INSERT INTO LAB VALUES ('Quest Diagnostics','Angiography','Angiography','102')
INSERT INTO LAB VALUES ('Quest Diagnostics','Mamography','Mamography','102')
INSERT INTO LAB VALUES ('Quest Diagnostics','X-Ray Report','X-Ray Report','102')
INSERT INTO LAB VALUES ('Boston Clinical Laboratories','Vitamin Deficiency','Vitamin Deficiency','101')
INSERT INTO LAB VALUES ('Boston Clinical Laboratories','Cancer Biopsy Test','Cancer Biopsy Test','101')
INSERT INTO LAB VALUES ('Boston Clinical Laboratories','Diabetes','Diabetes','101')
INSERT INTO LAB VALUES ('Boston Clinical Laboratories','Abdominal Test','Abdominal Test','101')

    COMMIT TRAN -- Transaction Success!
END TRY
BEGIN CATCH
    IF @@TRANCOUNT > 0
        ROLLBACK TRAN --RollBack in case of Error

    -- <EDIT>: From SQL2008 on, you must raise error messages as follows:
    DECLARE @ErrorMessage7 NVARCHAR(4000);  
    DECLARE @ErrorSeverity7 INT;  
    DECLARE @ErrorState7 INT;  

    SELECT   
       @ErrorMessage7 = ERROR_MESSAGE(),  
       @ErrorSeverity7 = ERROR_SEVERITY(),  
       @ErrorState7 = ERROR_STATE();  

    RAISERROR (@ErrorMessage, @ErrorSeverity, @ErrorState);  
    -- </EDIT>
END CATCH






/* INSERT VALUE FOR DOCTOR LAB ACCESS */

CREATE MASTER KEY ENCRYPTION BY PASSWORD = 'GROUP07_PASSWORD';
CREATE CERTIFICATE GROUP07_CERTIFICATE
WITH SUBJECT = 'GROUP07 HOSPITAL MANAGEMENT',
EXPIRY_DATE= '2022-08-30';
CREATE SYMMETRIC KEY GROUP07_Symmetrickey
WITH ALGORITHM= AES_128
ENCRYPTION BY CERTIFICATE GROUP07_Certificate;
OPEN SYMMETRIC KEY
GROUP07_Symmetrickey
DECRYPTION BY CERTIFICATE GROUP07_CERTIFICATE;

BEGIN TRY
    BEGIN TRANSACTION
														   
INSERT INTO DOCTOR_LAB_ACCESS VALUES (4001, 8002, 103, EncryptByKey( Key_GUID('GROUP07_Symmetrickey'), CONVERT(varbinary,'TEST123')), '2021-10-10 07:30:00.000');
INSERT INTO DOCTOR_LAB_ACCESS VALUES (4003, 8004, 103, EncryptByKey( Key_GUID('GROUP07_Symmetrickey'), CONVERT(varbinary,'TEST123')), '2021-11-11 02:30:00.000');
INSERT INTO DOCTOR_LAB_ACCESS VALUES (4005, 8008, 103, EncryptByKey( Key_GUID('GROUP07_Symmetrickey'), CONVERT(varbinary,'TEST123')), '2021-09-10 05:30:00.000');
INSERT INTO DOCTOR_LAB_ACCESS VALUES (4006, 8012, 103, EncryptByKey( Key_GUID('GROUP07_Symmetrickey'), CONVERT(varbinary,'TEST123')), '2021-12-01 01:30:00.000');
INSERT INTO DOCTOR_LAB_ACCESS VALUES (4007, 8014, 103, EncryptByKey( Key_GUID('GROUP07_Symmetrickey'), CONVERT(varbinary,'TEST123')), '2021-10-19 00:30:00.000');
INSERT INTO DOCTOR_LAB_ACCESS VALUES (4002, 8019, 103, EncryptByKey( Key_GUID('GROUP07_Symmetrickey'), CONVERT(varbinary,'TEST123')), '2021-10-20 01:30:00.000');
INSERT INTO DOCTOR_LAB_ACCESS VALUES (4003, 8018, 103, EncryptByKey( Key_GUID('GROUP07_Symmetrickey'), CONVERT(varbinary,'TEST123')), '2021-10-21 02:30:00.000');
INSERT INTO DOCTOR_LAB_ACCESS VALUES (4008, 8017, 103, EncryptByKey( Key_GUID('GROUP07_Symmetrickey'), CONVERT(varbinary,'TEST123')), '2021-10-22 03:30:00.000');
INSERT INTO DOCTOR_LAB_ACCESS VALUES (4009, 8016, 103, EncryptByKey( Key_GUID('GROUP07_Symmetrickey'), CONVERT(varbinary,'TEST123')), '2021-10-23 04:30:00.000');
INSERT INTO DOCTOR_LAB_ACCESS VALUES (4010, 8015, 103, EncryptByKey( Key_GUID('GROUP07_Symmetrickey'), CONVERT(varbinary,'TEST123')), '2021-10-24 05:30:00.000');
INSERT INTO DOCTOR_LAB_ACCESS VALUES (4011, 8014, 103, EncryptByKey( Key_GUID('GROUP07_Symmetrickey'), CONVERT(varbinary,'TEST123')), '2021-10-25 06:30:00.000');
INSERT INTO DOCTOR_LAB_ACCESS VALUES (4012, 8013, 103, EncryptByKey( Key_GUID('GROUP07_Symmetrickey'), CONVERT(varbinary,'TEST123')), '2021-10-26 07:30:00.000');
INSERT INTO DOCTOR_LAB_ACCESS VALUES (4013, 8012, 103, EncryptByKey( Key_GUID('GROUP07_Symmetrickey'), CONVERT(varbinary,'TEST123')), '2021-10-27 08:30:00.000');
INSERT INTO DOCTOR_LAB_ACCESS VALUES (4014, 8011, 103, EncryptByKey( Key_GUID('GROUP07_Symmetrickey'), CONVERT(varbinary,'TEST123')), '2021-10-28 09:30:00.000');
INSERT INTO DOCTOR_LAB_ACCESS VALUES (4015, 8010, 103, EncryptByKey( Key_GUID('GROUP07_Symmetrickey'), CONVERT(varbinary,'TEST123')), '2021-10-29 10:30:00.000');
INSERT INTO DOCTOR_LAB_ACCESS VALUES (4016, 8009, 103, EncryptByKey( Key_GUID('GROUP07_Symmetrickey'), CONVERT(varbinary,'TEST123')), '2021-10-02 11:30:00.000');
INSERT INTO DOCTOR_LAB_ACCESS VALUES (4017, 8008, 103, EncryptByKey( Key_GUID('GROUP07_Symmetrickey'), CONVERT(varbinary,'TEST123')), '2021-10-03 12:30:00.000');
INSERT INTO DOCTOR_LAB_ACCESS VALUES (4018, 8007, 103, EncryptByKey( Key_GUID('GROUP07_Symmetrickey'), CONVERT(varbinary,'TEST123')), '2021-10-04 13:30:00.000');
INSERT INTO DOCTOR_LAB_ACCESS VALUES (4019, 8006, 103, EncryptByKey( Key_GUID('GROUP07_Symmetrickey'), CONVERT(varbinary,'TEST123')), '2021-10-05 14:30:00.000');

    COMMIT TRAN -- Transaction Success!
END TRY
BEGIN CATCH
    IF @@TRANCOUNT > 0
        ROLLBACK TRAN --RollBack in case of Error

    -- <EDIT>: From SQL2008 on, you must raise error messages as follows:
    DECLARE @ErrorMessage8 NVARCHAR(4000);  
    DECLARE @ErrorSeverity8 INT;  
    DECLARE @ErrorState8 INT;  

    SELECT   
       @ErrorMessage8 = ERROR_MESSAGE(),  
       @ErrorSeverity8 = ERROR_SEVERITY(),  
       @ErrorState8 = ERROR_STATE();  

    RAISERROR (@ErrorMessage, @ErrorSeverity, @ErrorState);  
    -- </EDIT>
END CATCH

SELECT * FROM PATIENT