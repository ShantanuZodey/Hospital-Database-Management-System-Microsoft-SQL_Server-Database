CREATE TABLE PATIENT
(
    PATIENT_ID INT IDENTITY(5000,1) CONSTRAINT PATIENT_PK  PRIMARY KEY, -- primary key column
    FIRST_NAME VARCHAR(30) NOT NULL,
    MIDDLE_NAME VARCHAR(20),
    LAST_NAME VARCHAR(30) NOT NULL,
    DOB DATE NOT NULL ,
    WEIGHT INT CHECK(WEIGHT > 0), -- in pounds (lbs)
    HEIGHT INT CHECK(HEIGHT > 0), -- in centimeters (cm)
    GENDER VARCHAR(2) NOT NULL CHECK(gender IN ('M', 'F', 'NA')), -- assigned at birth
    STREET_NO INT NOT NULL,
    STREET_NAME VARCHAR(100) NOT NULL,
    CITY VARCHAR(30) NOT NULL,
    STATE_NAME CHAR(2) NOT NULL, -- Two letter abbreviation for stateName
    ZIP INT NOT NULL,
    PHONE_NO BIGINT  NOT NULL,
    EMAIL_ID VARCHAR(50) NULL,
);

/*INSERT SCRIPT FOR PATIENT*/

INSERT INTO PATIENT VALUES( 'Onita', 'Murray', 'Langworth', '1973-07-04', 228, 127, 'F', 408, 'Patrick Neck', 'Greenshire', 'OH', 44485, 8168483635, 'onita.langworth@yahoo.com');
INSERT INTO PATIENT VALUES( 'Jeffry', 'Cummings', 'Boyer', '06-Feb-1980', 133, 162, 'F', 697, 'Barton Street', 'Domitilachester', 'GA', 31042, 1913425048, 'jeffry.boyer@yahoo.com');
INSERT INTO PATIENT VALUES( 'Domenic', 'Schmidt', 'Bednar', '29-Aug-1964', 330, 126, 'M', 475, 'Bayer Burg', 'South Luannechester', 'DE', 19931, 5712127297, 'domenic.bednar@yahoo.com');
INSERT INTO PATIENT VALUES( 'Darryl', 'Josh', 'Reilly', '18-Sep-1996', 144, 167, 'M', 884, 'Min Station', 'Schneidertown', 'UT', 84523, 4349719735, 'darryl.reilly@yahoo.com');
INSERT INTO PATIENT VALUES( 'Taryn', 'Rempel', 'Breitenberg', '25-Sep-1993', 167, 185, 'M', 554, 'Tammera Parkways', 'West Maliaport', 'TX', 78594, 1312903684, 'taryn.breitenberg@yahoo.com');
INSERT INTO PATIENT VALUES( 'Danny', 'tyler', 'scott', '1993-07-05', 228, 127, 'M', 408, 'Patrick Neck', 'Greenshire', 'OH', 44485, 8168483635, 'danny.tyler@yahoo.com');
INSERT INTO PATIENT VALUES( 'Theodora', 'Greenfelder', 'DuBuque', '08-Sep-1983', 275, 171, 'F', 760, 'Pfannerstill Burg', 'West Robinview', 'CA', 92313, 5173095341, 'theodora.dubuque@yahoo.com', '');
INSERT INTO PATIENT VALUES( 'Torie', 'Jenice', 'Huel', '05-Jun-1966', 331, 156, 'F', 309, 'Davis Lodge', 'Thielchester', 'NV', 89145, 2348621386, 'torie.huel@yahoo.com', '');
INSERT INTO PATIENT VALUES( 'Lowell', 'Bailey', 'Jaskolski', '03-Nov-1975', 289, 151, 'F', 187, 'Sheilah Highway', 'Erinberg', 'OK', 73024, 1732781752, 'lowell.jaskolski@yahoo.com', '');
INSERT INTO PATIENT VALUES( 'Bree', 'Leuschke', 'Wuckert', '31-Dec-2000', 246, 153, 'M', 840, 'Veum Isle', 'New Feliciaborough', 'NM', 87565, 2709166578, 'bree.wuckert@yahoo.com', '');
INSERT INTO PATIENT VALUES( 'Sean', 'Dach', 'Stracke', '10-Dec-1998', 221, 164, 'F', 265, 'Rickie Forges', 'Rolfsonview', 'SC', 29208, 1731515022, 'sean.stracke@yahoo.com', '');
INSERT INTO PATIENT VALUES( 'Trey', 'Gleichner', 'Deckow', '28-Jun-1988', 292, 133, 'NA', 915, 'Wm Mall', 'Altagraciashire', 'ID', 83635, 5095628048, 'trey.deckow@yahoo.com', '');
INSERT INTO PATIENT VALUES( 'Edelmira', 'Cristobal', 'Rutherford', '30-Apr-1997', 236, 156, 'M', 960, 'Collier Cove', 'Aubreyton', 'MA', 1522, 9209542798, 'edelmira.rutherford@yahoo.com', '');
INSERT INTO PATIENT VALUES( 'Hoyt', 'Lavonda', 'Kiehn', '21-May-1982', 314, 160, 'M', 369, 'Cremin Brook', 'Gutmannmouth', 'OK', 74441, 1651417637, 'hoyt.kiehn@yahoo.com', '');
INSERT INTO PATIENT VALUES( 'Max', 'Gleichner', 'Dickinson', '07-Nov-2001', 326, 165, 'F', 125, 'Grimes Turnpike', 'Claudiomouth', 'TX', 79927, 9723091766, 'max.dickinson@yahoo.com', '');
INSERT INTO PATIENT VALUES( 'Haywood', 'Hickle', 'Satterfield', '26-Dec-1961', 232, 200, 'F', 413, 'Angelica Mills', 'South Toraland', 'NE', 69033, 6366091879, 'haywood.satterfield@yahoo.com', '');
INSERT INTO PATIENT VALUES( 'Jacalyn', 'Zulauf', 'Hyatt', '05-May-1989', 93, 192, 'F', 200, 'Jack Curve', 'Dachport', 'NE', 68023, 3109843905, 'jacalyn.hyatt@yahoo.com', '');
INSERT INTO PATIENT VALUES( 'Guy', 'Renner', 'Monahan', '09-Nov-1994', 157, 167, 'M', 836, 'Maggio Harbors', 'West Winstonview', 'CO', 80160, 2567730143, 'guy.monahan@yahoo.com', '');
INSERT INTO PATIENT VALUES( 'Guy', 'Nancee', 'Lockman', '24-Aug-1962', 145, 201, 'M', 778, 'Vincent Motorway', 'Lake Oneida', 'NE', 68136, 3347188220, 'guy.lockman@yahoo.com', '');
INSERT INTO PATIENT VALUES( 'Roscoe', 'Turcotte', 'Wisozk', '11-Nov-1983', 299, 121, 'F', 673, 'Osinski Mountains', 'Jessville', 'OR', 97115, 5034011533, 'roscoe.wisozk@yahoo.com', '');
INSERT INTO PATIENT VALUES( 'Leslee', 'Boyle', 'Zboncak', '02-Nov-1962', 296, 176, 'M', 698, 'Jesus Estate', 'South Rozella', 'WA', 98257, 1915813529, 'leslee.zboncak@yahoo.com', '');
INSERT INTO PATIENT VALUES( 'Teodoro', 'Simonis', 'Doyle', '27-Jun-1968', 97, 188, 'F', 982, 'Domingo Summit', 'Yoshikotown', 'UT', 84014, 9257046301, 'teodoro.doyle@yahoo.com', '');
INSERT INTO PATIENT VALUES( 'Chang', 'Koepp', 'Howe', '04-Nov-1995', 221, 179, 'F', 121, 'West Place', 'Port Vaughn', 'IN', 46619, 6189122025, 'chang.howe@yahoo.com', '');
INSERT INTO PATIENT VALUES( 'Veronique', 'Zulauf', 'Jaskolski', '14-Sep-2002', 127, 141, 'F', 409, 'Buckridge Expressway', 'Moenstad', 'NE', 68628, 9063093987, 'veronique.jaskolski@yahoo.com', '');
INSERT INTO PATIENT VALUES( 'Hermelinda', 'Nader', 'Blanda', '02-Dec-1968', 98, 172, 'F', 82, 'Champlin Ferry', 'Wardville', 'VA', 24155, 2167744265, 'hermelinda.blanda@yahoo.com', '');
INSERT INTO PATIENT VALUES( 'Ghislaine', 'Santiago', 'Upton', '19-Jun-1997', 101, 143, 'F', 897, 'Trenton Estates', 'Willischester', 'OH', 44802, 1562970729, 'ghislaine.upton@yahoo.com', '');
INSERT INTO PATIENT VALUES( 'Barton', 'Erdman', 'Mraz', '21-Nov-1991', 268, 193, 'M', 250, 'Novella Springs', 'Yvoneborough', 'VA', 23605, 9047577679, 'barton.mraz@yahoo.com', '');
INSERT INTO PATIENT VALUES( 'Ervin', 'Romaguera', 'DuBuque', '19-Nov-1998', 174, 145, 'F', 539, 'Terence Plains', 'New Bomouth', 'CT', 6922, 1906478190, 'ervin.dubuque@yahoo.com', '');
INSERT INTO PATIENT VALUES( 'Buena', 'Howell', 'Senger', '27-Nov-1983', 282, 173, 'NA', 325, 'Lindgren Oval', 'Kunzemouth', 'MA', 2643, 1541217621, 'buena.senger@yahoo.com', '');
INSERT INTO PATIENT VALUES( 'Emmett', 'Carter', 'Miller', '02-Oct-1984', 83, 149, 'F', 610, 'Hettinger Circles', 'South Brett', 'CO', 80244, 6417850015, 'emmett.miller@yahoo.com', '');
INSERT INTO PATIENT VALUES( 'Kemberly', 'Hubert', 'Ankunding', '10-Jul-1982', 163, 184, 'F', 305, 'Ondricka Squares', 'Port Sabramouth', 'CT', 6379, 6189368375, 'kemberly.ankunding@yahoo.com', '');
INSERT INTO PATIENT VALUES( 'Samual', 'Stehr', 'Zulauf', '09-Dec-1998', 333, 187, 'F', 201, 'Duncan Causeway', 'Garrettfurt', 'IN', 46819, 1206205359, 'samual.zulauf@yahoo.com', '');
INSERT INTO PATIENT VALUES( 'Elvera', 'Kuhic', 'Johnston', '26-May-1957', 237, 157, 'F', 823, 'Paris Glen', 'New Ja', 'IA', 51548, 7042765208, 'elvera.johnston@yahoo.com', '');
INSERT INTO PATIENT VALUES( 'Robin', 'Emmerich', 'Nader', '21-May-1958', 301, 142, 'M', 108, 'Ullrich Stravenue', 'North Terresaborough', 'ID', 83403, 1714979631, 'robin.nader@yahoo.com', '');
INSERT INTO PATIENT VALUES( 'Arnold', 'Stark', 'Schulist', '28-Sep-1985', 147, 124, 'M', 894, 'Deckow Islands', 'Ellsworthhaven', 'WY', 82242, 3519521027, 'arnold.schulist@yahoo.com', '');
INSERT INTO PATIENT VALUES( 'Lilli', 'Wiegand', 'Skiles', '15-Jul-1997', 332, 122, 'F', 535, 'Caitlyn Ranch', 'Homenickview', 'MS', 39213, 5019168878, 'lilli.skiles@yahoo.com', '');
INSERT INTO PATIENT VALUES( 'Roland', 'McDermott', 'Braun', '31-Dec-1983', 148, 163, 'F', 610, 'Cherry Branch', 'West Joseph', 'OK', 73573, 2536184653, 'roland.braun@yahoo.com', '');
INSERT INTO PATIENT VALUES( 'Renaldo', 'Halvorson', 'Ebert', '20-Jan-1969', 242, 158, 'NA', 19, 'Nienow Flat', 'East Yaelborough', 'CO', 81155, 9102195536, 'renaldo.ebert@yahoo.com', '');
INSERT INTO PATIENT VALUES( 'Keith', 'White', 'Jast', '28-Mar-1959', 102, 154, 'F', 392, 'Rempel Hill', 'Katieburgh', 'OK', 73744, 6154194742, 'keith.jast@yahoo.com', '');
INSERT INTO PATIENT VALUES( 'Marisha', 'Alton', 'Parker', '12-Oct-1962', 257, 197, 'F', 714, 'Carter Road', 'Port Mikaela', 'NM', 87061, 5055575943, 'marisha.parker@yahoo.com', '');



DROP TABLE RECORD;

/*RECORD*/

CREATE TABLE RECORD(    
    RECORD_ID INT PRIMARY KEY NOT NULL IDENTITY(10001,1),    
    DOCTOR_ID INT FOREIGN KEY (DOCTOR_ID) REFERENCES DOCTOR(DOCTOR_ID),    
    PATIENT_ID INT FOREIGN KEY (PATIENT_ID) REFERENCES PATIENT(PATIENT_ID),    
    ADMIT_DATE DATETIME,    
    DISCHARGEDATE DATETIME,    
    BILLING_ID INT NULL FOREIGN KEY (BILLING_ID) REFERENCES BILLING(BILLING_ID),    
    PATIENT_TYPE VARCHAR(1) CONSTRAINT CHK_SUBJECT CHECK (PATIENT_TYPE IN ('I', 'O'))
)

SELECT * FROM RECORD

INSERT INTO RECORD VALUES(4001, 5001, '2021-10-16 07:30:00.000', '2021-10-20 07:30:00.000',NULL, 'I');
INSERT INTO RECORD VALUES(4002, 5002, '2021-10-16 07:30:00.000', '2021-10-16 09:30:00.000',NULL, 'O');
