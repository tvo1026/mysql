/*
 Navicat Premium Data Transfer

 Source Server         : test
 Source Server Type    : MySQL
 Source Server Version : 50724
 Source Host           : localhost:3306
 Source Schema         : team_brunch_db

 Target Server Type    : MySQL
 Target Server Version : 50724
 File Encoding         : 65001

 Date: 16/05/2020 21:09:37
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;
DROP DATABASE IF EXISTS team_brunch_db;
CREATE DATABASE IF NOT EXISTS team_brunch_db;
USE team_brunch_db;

-- ----------------------------
-- Table structure for departments
-- ----------------------------
DROP TABLE IF EXISTS `departments`;
CREATE TABLE `departments`  (
  `department_id` varchar(10) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `industry_id` int(11) NOT NULL,
  `department_name` varchar(50) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  PRIMARY KEY (`department_id`) USING BTREE,
  UNIQUE INDEX `department_name`(`department_name`) USING BTREE,
  INDEX `departnments_fk_industries`(`industry_id`) USING BTREE,
  CONSTRAINT `departnments_fk_industries` FOREIGN KEY (`industry_id`) REFERENCES `industries` (`industry_id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of departments
-- ----------------------------
INSERT INTO `departments` VALUES ('d01', 3, 'Education');
INSERT INTO `departments` VALUES ('d02', 2, 'Financial Services');
INSERT INTO `departments` VALUES ('d03', 1, 'Healthcare');
INSERT INTO `departments` VALUES ('d04', 3, 'Human Resources');
INSERT INTO `departments` VALUES ('d05', 4, 'Information Systems');
INSERT INTO `departments` VALUES ('d06', 2, 'Marketing');
INSERT INTO `departments` VALUES ('d07', 1, 'Physical Therapy');
INSERT INTO `departments` VALUES ('d08', 4, 'Software Developemtn');

-- ----------------------------
-- Table structure for emp_records
-- ----------------------------
DROP TABLE IF EXISTS `emp_records`;
CREATE TABLE `emp_records`  (
  `employee_id` int(11) NOT NULL,
  `net_pay` double NOT NULL,
  `gross_pay` double NOT NULL,
  INDEX `titles_fk_employees`(`employee_id`) USING BTREE,
  CONSTRAINT `titles_fk_employees` FOREIGN KEY (`employee_id`) REFERENCES `employees` (`employee_id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of emp_records
-- ----------------------------
INSERT INTO `emp_records` VALUES (1, 156418.89, 153353.22);
INSERT INTO `emp_records` VALUES (2, 68771.46, 66283.55);
INSERT INTO `emp_records` VALUES (3, 107346, 105242.81);
INSERT INTO `emp_records` VALUES (4, 101995.96, 99427.1);
INSERT INTO `emp_records` VALUES (5, 70959.79, 12802.6);
INSERT INTO `emp_records` VALUES (6, 74548.75, 71863.47);
INSERT INTO `emp_records` VALUES (7, 74548.75, 71863.44);
INSERT INTO `emp_records` VALUES (8, 95451.51, 91026.15);
INSERT INTO `emp_records` VALUES (9, 74548.75, 71863.55);
INSERT INTO `emp_records` VALUES (10, 138790, 95998.85);
INSERT INTO `emp_records` VALUES (11, 109492.92, 107347.77);
INSERT INTO `emp_records` VALUES (12, 141386.81, 143467.91);
INSERT INTO `emp_records` VALUES (13, 75105.66, 73634.76);
INSERT INTO `emp_records` VALUES (14, 146103.78, 143790.12);
INSERT INTO `emp_records` VALUES (15, 77166, 75029.54);
INSERT INTO `emp_records` VALUES (16, 124248.31, 124370.9);
INSERT INTO `emp_records` VALUES (17, 141566, 144343.1);
INSERT INTO `emp_records` VALUES (18, 183113, 186705.42);
INSERT INTO `emp_records` VALUES (19, 65665.4, 63026.94);
INSERT INTO `emp_records` VALUES (20, 72475.02, 68837.91);
INSERT INTO `emp_records` VALUES (21, 183095.93, 185771.55);
INSERT INTO `emp_records` VALUES (22, 107346, 101240.8);
INSERT INTO `emp_records` VALUES (23, 107345.82, 58160.26);
INSERT INTO `emp_records` VALUES (24, 139879.64, 138508.46);
INSERT INTO `emp_records` VALUES (25, 108356.1, 109951.51);
INSERT INTO `emp_records` VALUES (26, 94257.68, 90861.61);
INSERT INTO `emp_records` VALUES (27, 75105.66, 73634.94);
INSERT INTO `emp_records` VALUES (28, 107345.82, 90594.87);
INSERT INTO `emp_records` VALUES (29, 67062.87, 64808.42);
INSERT INTO `emp_records` VALUES (30, 99085.2, 96638.45);
INSERT INTO `emp_records` VALUES (31, 99608.1, 97656.87);
INSERT INTO `emp_records` VALUES (32, 107346, 105242.86);
INSERT INTO `emp_records` VALUES (33, 163663, 154840.36);
INSERT INTO `emp_records` VALUES (34, 141566, 144342.23);
INSERT INTO `emp_records` VALUES (35, 123799, 121373.24);
INSERT INTO `emp_records` VALUES (36, 118047, 115733.48);
INSERT INTO `emp_records` VALUES (37, 69215.25, 66712.28);
INSERT INTO `emp_records` VALUES (38, 136285.48, 131094.85);
INSERT INTO `emp_records` VALUES (39, 107346, 105242.8);
INSERT INTO `emp_records` VALUES (40, 123799, 121373.24);
INSERT INTO `emp_records` VALUES (41, 57384.39, 56261.61);
INSERT INTO `emp_records` VALUES (42, 163663, 160905.61);
INSERT INTO `emp_records` VALUES (43, 74548.75, 73395.94);
INSERT INTO `emp_records` VALUES (44, 131335.26, 126601.49);
INSERT INTO `emp_records` VALUES (45, 88849, 87919.95);
INSERT INTO `emp_records` VALUES (46, 93065.42, 89620.39);
INSERT INTO `emp_records` VALUES (47, 107346, 105242.67);
INSERT INTO `emp_records` VALUES (48, 123799.44, 119041.15);
INSERT INTO `emp_records` VALUES (49, 80871, 79287.06);
INSERT INTO `emp_records` VALUES (50, 97655, 98557.15);
INSERT INTO `emp_records` VALUES (51, 102214.82, 100016.4);
INSERT INTO `emp_records` VALUES (52, 141554.86, 140862.16);
INSERT INTO `emp_records` VALUES (53, 141566, 143648.3);
INSERT INTO `emp_records` VALUES (54, 141566, 146028.86);
INSERT INTO `emp_records` VALUES (55, 109492.92, 108776.94);
INSERT INTO `emp_records` VALUES (56, 126377.96, 123417.28);
INSERT INTO `emp_records` VALUES (57, 123799, 121372.84);
INSERT INTO `emp_records` VALUES (58, 123799, 120449.2);
INSERT INTO `emp_records` VALUES (59, 182492, 188746.07);
INSERT INTO `emp_records` VALUES (60, 133514, 137500.74);
INSERT INTO `emp_records` VALUES (61, 131335.26, 126602.06);
INSERT INTO `emp_records` VALUES (62, 119005.07, 115103.25);
INSERT INTO `emp_records` VALUES (63, 52703.25, 51671.38);
INSERT INTO `emp_records` VALUES (64, 87107, 16872.94);
INSERT INTO `emp_records` VALUES (65, 73262.91, 73100.83);
INSERT INTO `emp_records` VALUES (66, 107346, 105545.88);
INSERT INTO `emp_records` VALUES (67, 163614.57, 165219.32);
INSERT INTO `emp_records` VALUES (68, 141566, 143648.26);
INSERT INTO `emp_records` VALUES (69, 141566, 138790.88);
INSERT INTO `emp_records` VALUES (70, 95740, 83451.95);
INSERT INTO `emp_records` VALUES (71, 141566, 144342.33);
INSERT INTO `emp_records` VALUES (72, 74548.75, 73363.53);
INSERT INTO `emp_records` VALUES (73, 107346, 105242.82);
INSERT INTO `emp_records` VALUES (74, 65457.41, 63256.49);
INSERT INTO `emp_records` VALUES (75, 109492.92, 106133.48);
INSERT INTO `emp_records` VALUES (76, 107345.82, 62377.29);
INSERT INTO `emp_records` VALUES (77, 107315.07, 102774.96);
INSERT INTO `emp_records` VALUES (78, 107346, 180025.3);
INSERT INTO `emp_records` VALUES (79, 141566, 142954.44);
INSERT INTO `emp_records` VALUES (80, 77922.59, 48549.38);
INSERT INTO `emp_records` VALUES (81, 123563.69, 118453.82);
INSERT INTO `emp_records` VALUES (82, 141076.09, 134806.75);
INSERT INTO `emp_records` VALUES (83, 109492.92, 107673.51);
INSERT INTO `emp_records` VALUES (84, 163663, 164216.1);
INSERT INTO `emp_records` VALUES (85, 102983.5, 97552);
INSERT INTO `emp_records` VALUES (86, 72379.13, 68660.52);
INSERT INTO `emp_records` VALUES (87, 96259.68, 92901.25);
INSERT INTO `emp_records` VALUES (88, 73086.86, 74616.63);
INSERT INTO `emp_records` VALUES (89, 86564.5, 83322.72);
INSERT INTO `emp_records` VALUES (90, 64833.25, 62499.53);
INSERT INTO `emp_records` VALUES (91, 74548.75, 71863.45);
INSERT INTO `emp_records` VALUES (92, 155722.6, 148826.87);
INSERT INTO `emp_records` VALUES (93, 107346, 105242.84);
INSERT INTO `emp_records` VALUES (94, 118047, 115733.88);
INSERT INTO `emp_records` VALUES (95, 103599.75, 99867.12);
INSERT INTO `emp_records` VALUES (96, 109492.92, 106133.39);
INSERT INTO `emp_records` VALUES (97, 88643.01, 85091.28);
INSERT INTO `emp_records` VALUES (98, 99608.1, 97658.08);
INSERT INTO `emp_records` VALUES (99, 63274.63, 61632.54);
INSERT INTO `emp_records` VALUES (100, 61113, 59915.9);
INSERT INTO `emp_records` VALUES (101, 123799, 120956.71);
INSERT INTO `emp_records` VALUES (102, 107346, 105241.41);
INSERT INTO `emp_records` VALUES (103, 163663, 162060.94);
INSERT INTO `emp_records` VALUES (104, 52613.24, 49774.74);
INSERT INTO `emp_records` VALUES (105, 61113, 59138.4);
INSERT INTO `emp_records` VALUES (106, 76500, 2884.7);
INSERT INTO `emp_records` VALUES (107, 122815.72, 119048.16);
INSERT INTO `emp_records` VALUES (108, 71961.53, 68533.26);
INSERT INTO `emp_records` VALUES (109, 77166, 75654.82);

-- ----------------------------
-- Table structure for employees
-- ----------------------------
DROP TABLE IF EXISTS `employees`;
CREATE TABLE `employees`  (
  `employee_id` int(11) NOT NULL AUTO_INCREMENT,
  `first_name` varchar(50) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `last_name` varchar(50) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `address` varchar(100) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `city` varchar(100) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `state` char(2) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `zip_code` int(11) NOT NULL,
  `phone` varchar(50) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `email` varchar(150) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  PRIMARY KEY (`employee_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 110 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of employees
-- ----------------------------
INSERT INTO `employees` VALUES (1, 'Katie', 'Nguyen', '3800 Reservoir Road NW', 'Washington', 'DC', 20007, NULL, 'katie.nguyen@gunet.georgetown.edu');
INSERT INTO `employees` VALUES (2, 'Anne', 'Hott', '15400 Calhoun Drive 190', 'Rockville', 'MD', 20855, '301-294-5231', 'ahott@i-a-i.com');
INSERT INTO `employees` VALUES (3, 'Lauren', 'Doherty', '10 Griffin Road North', 'Windsor', 'CT', 6095, '617-701-5021', 'ldoherty@carouselindustries.com');
INSERT INTO `employees` VALUES (4, 'Nicholas', 'Abid', '6701 Democracy Blvd, Suite 301', 'Bethesda', 'MD', 20817, '301-706-3313', 'employment@omnitecinc.com');
INSERT INTO `employees` VALUES (5, 'Veronica', 'Ward', '11501 Burnet Bldg 903', 'Austin', 'TX', 78758, '734-926-5509', 'redesign@us.ibm.com');
INSERT INTO `employees` VALUES (6, 'Shreedhar', 'Shah', '943-A Russell Avenue', 'Gaithersburg', 'MD', 20879, '301-569-7931', 'sshah@pioneerpwr.com');
INSERT INTO `employees` VALUES (7, 'Michael', 'Frenette', '10 Post Office Square 1100N', 'Boston', 'MA', 2109, '617-350-0950', 'mflynn@piercedavis.com');
INSERT INTO `employees` VALUES (8, 'Kathryn', 'Fettrow', '1776 K Street Northwest', 'Washington', 'DC', 20006, '202-719-4336', 'kfettrow@wileyrein.com');
INSERT INTO `employees` VALUES (9, 'Tyler', 'Clay', '2407 West 24th Street', 'Kearney', 'NE', 68845, '308-238-2420', 'campusrecruiting@buckle.com');
INSERT INTO `employees` VALUES (10, 'Joseph', 'Chirico', '11 N. Washington St. Suite 100', 'Rockville', 'MD', 20850, NULL, 'jchirico@johnmarshallbank.com');
INSERT INTO `employees` VALUES (11, 'Velan', 'Thillairajah', '1945 Old Gallows Road, Suite 310', 'Vienna', 'VA', 22182, '703-790-9715', 'swi@eaiti.com');
INSERT INTO `employees` VALUES (12, 'Suzie', 'Berry', '1 Penn Plaza Suite 2435', 'New York', 'NY', 10119, NULL, 'pdrew@pareto.co.uk');
INSERT INTO `employees` VALUES (13, 'Susan', 'Seling', '401 Hungerford Drive, 5th Floor', 'Rockville', 'MD', 20850, '240-777-1269', 'susan.c.seling@montgomerycountymd.gov');
INSERT INTO `employees` VALUES (14, 'Erica', 'Rau', '1777 Reisterstown Road, Suite 236', 'Pikesville', 'MD', 21208, NULL, 'erau@proudmomentsaba.com');
INSERT INTO `employees` VALUES (15, 'Francis', 'Pollaro', '260 West 39th Street 3rd Floor', 'New York', 'NY', 10018, '212-643-4800', 'fpollaro@newyorkfestivals.com');
INSERT INTO `employees` VALUES (16, 'Kyle', 'Nathanson', '1524 11th Street', 'Santa Monica', 'CA', 90401, '818-312-4878', 'kyle@hookedapp.com');
INSERT INTO `employees` VALUES (17, 'Paul', 'Stukus', '7777 Leesburg Pike, Suite 314 N', 'Falls Church', 'MD', 22043, '571-282-0076', 'PStukus@abhes.org');
INSERT INTO `employees` VALUES (18, 'Eletta', 'Kershaw', 'P.O. Box 12195, Bldg. 143 3039 Cornwallis Rd.', 'Research Triangle Park', 'NC', 27709, '203-207-1220', 'eletta@us.ibm.com');
INSERT INTO `employees` VALUES (19, 'Tiffany', 'Brett', '30 W. Gude Drive Ste 150', 'Rockville', 'MD', 20850, NULL, 'tbrett@alsinfo.org');
INSERT INTO `employees` VALUES (20, 'Hla', 'Shih', '7142 Arlington Rd', 'Bethesda', 'MD', 20814, '301-651-2092', 'avameys@umaryland.edu');
INSERT INTO `employees` VALUES (21, 'Emma', 'Harris', '6935 Arlington Road', 'Bethesda', 'MD', 20814, NULL, 'eharris@epe.org');
INSERT INTO `employees` VALUES (22, 'Ambreen', 'Hassan', '19900 Brandermill Dr.', 'Germantown', 'MD', 20876, '301-972-5789', 'ambreen.hassan@kidsvillalearningcenter.com');
INSERT INTO `employees` VALUES (23, 'Michael', 'Connolly', '15010 Broschart Road Suite 250', 'Rockville', 'MD', 20850, NULL, 'mconnolly@immunomix.com');
INSERT INTO `employees` VALUES (24, 'Michelle', 'Chen', '9 Hillyer Court, NW', 'Washington', 'DC', 20008, NULL, 'michellec@artsandartists.org');
INSERT INTO `employees` VALUES (25, 'Nandita', 'Dindayal', '44121 Harry Byrd Highway', 'Ashburn', 'VA', 20147, '703-889-8511', 'hr@astacrs.com');
INSERT INTO `employees` VALUES (26, 'Olivia', 'Ricchi', '5335 Wisconsin Ave, NW Suite 640', 'Washington', 'DC', 20015, '202-841-9114', 'oliviaricchi@gmail.com');
INSERT INTO `employees` VALUES (27, 'Amanda', 'Brown', '5445 Legacy Drive 300', 'Plano', 'TX', 75024, '972-789-7800', 'amanda.brown@wipro.com');
INSERT INTO `employees` VALUES (28, 'Krista', 'Ogburn', '10408 Montgomery Avenue', 'Kensington', 'MD', 20895, '301-949-8626', 'kogburn@jubileemd.org');
INSERT INTO `employees` VALUES (29, 'Brandy', 'Carlson', '7200 Wisconsin Ave., Suite 204', 'Bethesda', 'MD', 20814, '301-298-2234', 'brandy.carlson@seventy2capital.com');
INSERT INTO `employees` VALUES (30, 'Mary', 'Stang', '2400 Research Blvd 115', 'Rockville', 'MD', 20850, '301-337-2290', 'jobs@spsnet.com');
INSERT INTO `employees` VALUES (31, 'Krishna', 'Penumaka', '12974 Middlebrook Rd', 'Germantown', 'MD', 20874, NULL, 'krish.penumaka@codeninjas.com');
INSERT INTO `employees` VALUES (32, 'Sarah', 'Humphrey', '416 Higuera St', 'San Luis Obispo', 'CA', 93401, '805-541-3836', 'support.hr@lindamoodbell.com');
INSERT INTO `employees` VALUES (33, 'Wendy', 'Dodd', 'PO Box 165Yellowstone National Park', 'Gardiner', 'MT', 82190, '307-344-5614', 'wdodd@xanterra.com');
INSERT INTO `employees` VALUES (34, 'Shannon', 'Gargan', '2 Wisconsin Circle', 'Chevy Chase', 'MD', 20815, '301-231-9473', 'life@weddingwire.com');
INSERT INTO `employees` VALUES (35, 'Luke', 'Borwegen', '9110 Sudbury Rd', 'Silver Spring', 'MD', 20901, '240-479-5873', 'luke@rogermanno.com');
INSERT INTO `employees` VALUES (36, 'Lance', 'Ridd', '100 West Overland Rd. Suite 200', 'Meridian', 'ID', 83642, '208-649-4887', 'lance@sweetsummerjobs.com');
INSERT INTO `employees` VALUES (37, 'Stephanie', 'Arhin', '1200 New Jersey Ave, SE', 'Washington', 'DC', 20590, '202-366-2648', 'stephanie.arhin@dot.gov');
INSERT INTO `employees` VALUES (38, 'John', 'Hines', '16701 Norwood Rd', 'Sandy Spring', 'MD', 20860, '301-370-2742', 'john@sandyspringadventurepark.org');
INSERT INTO `employees` VALUES (39, 'Buck', 'Nye', '6405 Flank Drive', 'Harrisburg', 'PA', 17112, '717-561-2500', 'buck.nye@hcnyeco.com');
INSERT INTO `employees` VALUES (40, 'Diana', 'Rodrigues', '120 South Wood Avenue', 'Woodbridge Township', 'NJ', 8830, '212-267-9124', 'diana@aptask.com');
INSERT INTO `employees` VALUES (41, 'Carrie', 'Blackman', '75 Broad Street', 'New York', 'NY', 10004, '816-401-4751', 'cblackman@ultranauts.co');
INSERT INTO `employees` VALUES (42, 'Hailey', 'Brown', '1430 Broadway', 'New York', 'NY', 10018, '303-571-2000', 'haileyb@bayardad.com');
INSERT INTO `employees` VALUES (43, 'Jack', 'Marti', '241 E 4th St', 'Frederick', 'MD', 21701, '301-712-6623', 'jack.marti@goape.com');
INSERT INTO `employees` VALUES (44, 'Wei', 'Li', '2479 E Bayshore Rd', 'Palo Alto', 'CA', 94303, '301-221-1562', 'recruiting@kaleidoglobe.com');
INSERT INTO `employees` VALUES (45, 'Joan', 'Silverman', '12270 Wilkins Avenue', 'Rockville', 'MD', 20852, '301-798-9824', 'jsilverman@rmalimo.com');
INSERT INTO `employees` VALUES (46, 'Kimberly', 'Miller', '191 North Upper Wacker Drive', 'Chicago', 'IL', 60606, '301-972-5789', 'kimberly.miller@dbr.com');
INSERT INTO `employees` VALUES (47, 'Christine', 'Ramos', '441 G St NW', 'Washington', 'DC', 20548, '202-512-9416', 'ramosc@gao.gov');
INSERT INTO `employees` VALUES (48, 'Emily', 'Fecile', '501 3rd NW St', 'Washington', 'DC', 20001, '202-467-4900', 'efecile@childrenslawcenter.org');
INSERT INTO `employees` VALUES (49, 'Christopher', 'Carlson', '2980 Fairview Park Drive', 'Falls Church', 'MD', 22042, '703-556-3197', 'christopher.carlson2@ngc.com');
INSERT INTO `employees` VALUES (50, 'Mary', 'Udesen', '9600 Bryn Mawr', 'Rosemont', 'IL', 60018, '847-728-4942', 'mudesen@imo-online.com');
INSERT INTO `employees` VALUES (51, 'Dayle', 'Segal', '10710 Gilroy Road', 'Hunt Valley', 'MD', 21031, '443-589-2400', 'dsegal@centuryeng.com');
INSERT INTO `employees` VALUES (52, 'Tanesia', 'Barrow', '1390 Piccard Dr.', 'Rockville', 'MD', 20850, '240-660-2087', 'tanesiab@barrowwise.com');
INSERT INTO `employees` VALUES (53, 'Cathy', 'Sobotka', '430 North 1st Avenue Suite 300', 'Minneapolis', 'MN', 55401, '612-332-1441', 'hiring@mylegalaid.org');
INSERT INTO `employees` VALUES (54, 'Diane', 'Schmidt', '5236 Intercoastal Dr', 'Monrovia', 'MD', 21770, '301-631-7471', 'd01052adm@costco.com');
INSERT INTO `employees` VALUES (55, 'Gabriella', 'Darnell', '9119 Cross Park Drive', 'Knoxville', 'TN', 37923, '865-691-1756', 'hr@ams-corp.com');
INSERT INTO `employees` VALUES (56, 'Kelley', 'Nutter', '218 Nott Terrace', 'Schenectady', 'NY', 12307, '518-374-8424', 'hr@mohawkopportunities.org');
INSERT INTO `employees` VALUES (57, 'Christopher', 'Tkacik', '1000 Hilltop Circle', 'Baltimore', 'MD', 21250, '410 455-2453', 'tkacik@umbc.edu');
INSERT INTO `employees` VALUES (58, 'Lonnie', 'Greenblatt', '110 North Washington Street', 'Rockville', 'MD', 20850, '301-251-8776', 'lawlonn@gmail.com');
INSERT INTO `employees` VALUES (59, 'Meosha', 'Austin', '100 Half Day Rd', 'Lincolnshire', 'IL', 60069, '312-279-5891', 'meosha.austin@hewitt.com');
INSERT INTO `employees` VALUES (60, 'Mary', 'George', 'One Denso Rd.', 'Battle Creek', 'MI', 49037, '269-565-1543', 'dmmi_recruiter@denso-diam.com');
INSERT INTO `employees` VALUES (61, 'James', 'Meincke', '300 Park Avenue', 'New York', 'NY', 10022, '646-374-4149', 'marketing-ads@closeriq.com');
INSERT INTO `employees` VALUES (62, 'Amaria', 'Asghar', '1901 N. Fort Myer Drive #902', 'Arlington', 'VA', 22209, '703-637-0546', 'bcshannon@vorsight.com');
INSERT INTO `employees` VALUES (63, 'Mark', 'Olcott', '3700 O\'Donnell St', 'Baltimore', 'MD', 21224, '844-848-8783', 'molcott@vitusvet.com');
INSERT INTO `employees` VALUES (64, 'Rita', 'Kidd', '4922 North Harbor Drive', 'San Diego', 'CA', 92106, '757-567-5068', 'rkidd@semantic-ai.com');
INSERT INTO `employees` VALUES (65, 'Lindsay', 'Porter', '330 Pfingsten Road', 'Northbrook', 'IL', 60062, '847-753-6579', 'lporter@wje.com');
INSERT INTO `employees` VALUES (66, 'Alejandro', 'Florez', '333 West Camden Street', 'Baltimore', 'MD', 21201, '410-547-6258', 'resumes@orioles.com');
INSERT INTO `employees` VALUES (67, 'Zachary', 'Hipps', '12168 Nebel Street', 'Rockville', 'MD', 20852, '301-728-9662', 'zach.hipps@stacato.com');
INSERT INTO `employees` VALUES (68, 'Carlin', 'Watkins', '1560 Wilson Blvd., Suite 500', 'Arlington', 'VA', 22209, '703-351-0200', 'resumes@symplicity.com');
INSERT INTO `employees` VALUES (69, 'Teneshia', 'Glaze', '595 Westport Avenue', 'Norwalk', 'CT', 6851, '203-846-7023', 'teneshia_bridges_glaze@campbellsoup.com');
INSERT INTO `employees` VALUES (70, 'Jason', 'Newby', '4931 North 300 West', 'Provo', 'UT', 84604, '208-871-8724', 'jnewby@vivint.com');
INSERT INTO `employees` VALUES (71, 'Courtney', 'Peterson', '3825 Wisconsin Avenue, NW', 'Washington', 'DC', 200016, '202-537-8135', 'hr@sidwell.edu');
INSERT INTO `employees` VALUES (72, 'Brittany', 'Bennett', '215 Forest Hills Street', 'Jamaica Plain', 'MA', 2130, '617-935-1420', 'recruiting@matcheducation.org');
INSERT INTO `employees` VALUES (73, 'Christine', 'Tuminello', '331 Newman Springs Road 350', 'Red Bank', 'NJ', 7701, '646-794-8456', 'ctuminello@diversant.com');
INSERT INTO `employees` VALUES (74, 'Jeff', 'Gamble', '221 Lassen Avenue', 'Mountain View', 'CA', 94043, '650-291-2888', 'director@jefuniracamp.com');
INSERT INTO `employees` VALUES (75, 'Doris', 'Miles', '300 N. Stonestreet Avenue', 'Rockville', 'MD', 20850, NULL, 'dmiles@historyassociates.com');
INSERT INTO `employees` VALUES (76, 'Siow', 'Lim', '5777 W. Century Blvd, Suite 1500', 'Los Angeles', 'CA', 90045, '-6882', 'siow@i2x.net');
INSERT INTO `employees` VALUES (77, 'Gina', 'Vittorio', '12505 Park Potomac Avenue', 'Potomac', 'MD', 20854, '301-945-9289', 'gdevittorio@shulmanrogers.com');
INSERT INTO `employees` VALUES (78, 'Bayli', 'Wittenberg', '11755 Wilshire Boulevard', 'Los Angeles', 'CA', 90025, '310-943-8365', 'bwittenberg@semlerbrossy.com');
INSERT INTO `employees` VALUES (79, 'Tammy', 'Hughes', '1050 Connecticut Avenue Northwest', 'Washington', 'DC', 20036, '202-789-3105', 'tammyw@woodsidetemps.com');
INSERT INTO `employees` VALUES (80, 'Jessika', 'James', '15000 Broschart Road', 'Rockville', 'MD', 20850, '301-251-6874', 'jessika.james@maryland.gov');
INSERT INTO `employees` VALUES (81, 'Lauren', 'Pierce', '945 Stewart Dr., Suite 250', 'Sunnyvale', 'CA', 94085, '650-314-0200', 'lauren@analogbits.com');
INSERT INTO `employees` VALUES (82, 'Torri', 'Schaffer', '18403 Woodfield Road A', 'Gaithersburg', 'MD', 20879, '301-869-5081', 'torri@torrilegalservices.com');
INSERT INTO `employees` VALUES (83, 'Monica', 'Vidal', '14670 Rothgeb Drive', 'Rockville', 'MD', 20850, '301-762-1800', 'monica@washingtontalent.com');
INSERT INTO `employees` VALUES (84, 'Julianne', 'Weiner', '435 E East Diamond Ave.', 'Gaithersburg', 'MD', 20877, '301-869-7800', 'julianne@sonicpromos.com');
INSERT INTO `employees` VALUES (85, 'Brittney', 'Taylor', '40 West 29th Street 404', 'New York', 'NY', 10001, '888-458-7530', 'brittney@hireart.com');
INSERT INTO `employees` VALUES (86, 'Vaugh', 'McCandlish', '1801 Research Blvd,Ste 400', 'Rockville', 'MD', 20850, '301-315-3407', 'vmccandl@ahm.com');
INSERT INTO `employees` VALUES (87, 'Allen', 'Tarpley', '9900 Georgia Street', 'Crown Point', 'IN', 46307, '219-794-1495', 'allen@americanfireproofing.com');
INSERT INTO `employees` VALUES (88, 'Jackie', 'Aldrich', '1 Pepsi Way', 'Somers', 'NY', 10589, '877-724-5621', 'jackie.aldrich@adp.com');
INSERT INTO `employees` VALUES (89, 'Katie', 'Vargas', '508 Olney Sandy Spring Road Suite 200', 'Sandy Spring', 'MD', 20860, '301-924-5258', 'kvargas@nicholscontracting.com');
INSERT INTO `employees` VALUES (90, 'Jane', 'Warfel', '9145 Guilford Road, Suite 175', 'Columbia', 'MD', 21046, '301-483-3813', 'jwarfel@certisusa.com');
INSERT INTO `employees` VALUES (91, 'Josee', 'Smith', '208 Utah Street', 'San Francisco', 'CA', 94103, '650-426-8181', 'josee@modeanalytics.com');
INSERT INTO `employees` VALUES (92, 'Stefanie', 'Friedman', '2044 County Route', 'Copake', 'NY', 12516, '516-626-7668', 'stefanie@camppontiac.com');
INSERT INTO `employees` VALUES (93, 'Diane', 'Thomas', '7361 Calhoun Place 680', 'Rockville', 'MD', 20855, '301-519-0535', 'dthomas@mercury-assoc.com');
INSERT INTO `employees` VALUES (94, 'Yvonne', 'Roper', '1150 17th Street, NW Suite 900', 'Washington', 'DC', 20036, '202-414-6860', 'yroper@littler.com');
INSERT INTO `employees` VALUES (95, 'John', 'Karamanos', '1010 West Corsicana Street', 'Athens', 'TX', 75758, '408-254-5420', 'jk@disruptiveendeavors.com');
INSERT INTO `employees` VALUES (96, 'Bill', 'Berglie', '212 S. Frederick Avenue', 'Gaithersburg', 'MD', 20877, '301-417-7010', 'bberglie@cfinish.com');
INSERT INTO `employees` VALUES (97, 'Mohammad', 'Syed', '1250 Connecticut Avenue Northwest', 'Washington', 'DC', 20036, '202-261-3526', 'msyed@syedfirm.com');
INSERT INTO `employees` VALUES (98, 'Anita', 'Pearson', '2525 Riva Road', 'Annapolis', 'MD', 21401, '229-227-2444', 'apearson@keyacquisition.com');
INSERT INTO `employees` VALUES (99, 'James', 'Harper', '15728 Crabbs Branch Way', 'Rockville', 'MD', 20850, '202-302-5479', 'james@americancustomcontractors.com');
INSERT INTO `employees` VALUES (100, 'Lynn', 'Moon', '356 Laurens Road', 'Montoursville', 'PA', 17754, '570-433-3366', 'lynn.moon@gwa-inc.com');
INSERT INTO `employees` VALUES (101, 'Molly', 'Quigley', '3236 M Street Northwest Quigley', 'Washington', 'DC', 20007, '202-333-9180', 'employment@clydes.com');
INSERT INTO `employees` VALUES (102, 'Jennifer', 'Koneval', '16000 Dallas Parkway 700', 'Dallas', 'TX', 75248, '469-261-1480', 'jkoneval@axxess.com');
INSERT INTO `employees` VALUES (103, 'Sam', 'Goebel', '4179 County Road 40 Northwest', 'Garfield', 'MN', 56332, '320-834-2211', 'sgoebel@gcilift.com');
INSERT INTO `employees` VALUES (104, 'Bryan', 'Wage', '1300 4th Street', 'Santa Monica', 'CA', 90401, '310-451-1353', 'staff@thepaintedturtle.org');
INSERT INTO `employees` VALUES (105, 'Carolina', 'Baruth', '440 Park Avenue South, 2nd Floor', 'New York', 'NY', 10016, '212-497-3527', 'bosch@culturalvistas.org');
INSERT INTO `employees` VALUES (106, 'Ami', 'Ariel', '9 Bedford Place', 'Brooklyn', 'NY', 11216, NULL, 'ami@g123.com');
INSERT INTO `employees` VALUES (107, 'Jessica', 'Saraniti', '40 Wall Street', 'New York', 'NY', 10038, NULL, 'jsaraniti@employcore.com');
INSERT INTO `employees` VALUES (108, 'Cesar', 'Garzon', '2175 K St, NW, Ste. 100', 'Washington', 'DC', 20037, '202-842-1212', 'cesar_edu5@yahoo.com');
INSERT INTO `employees` VALUES (109, 'Nia', 'Lewis', 'One Cambridge Center', 'Cambridge', 'MA', 2131, '617-642-7907', 'nia@laptop.org');

-- ----------------------------
-- Table structure for industries
-- ----------------------------
DROP TABLE IF EXISTS `industries`;
CREATE TABLE `industries`  (
  `industry_id` int(11) NOT NULL AUTO_INCREMENT,
  `industry_name` varchar(50) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  PRIMARY KEY (`industry_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 5 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of industries
-- ----------------------------
INSERT INTO `industries` VALUES (1, 'Allied Health');
INSERT INTO `industries` VALUES (2, 'Business & Communication');
INSERT INTO `industries` VALUES (3, 'Education Social Science & Humanities');
INSERT INTO `industries` VALUES (4, 'STEM');

-- ----------------------------
-- Table structure for org_emp
-- ----------------------------
DROP TABLE IF EXISTS `org_emp`;
CREATE TABLE `org_emp`  (
  `employee_id` int(11) NOT NULL,
  `organization_id` int(11) NOT NULL,
  `department_id` varchar(10) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  INDEX `org_emp_fk_employees`(`employee_id`) USING BTREE,
  INDEX `org_emp_fk_organizations`(`organization_id`) USING BTREE,
  INDEX `org_emp_fk_departments`(`department_id`) USING BTREE,
  CONSTRAINT `org_emp_fk_departments` FOREIGN KEY (`department_id`) REFERENCES `departments` (`department_id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `org_emp_fk_employees` FOREIGN KEY (`employee_id`) REFERENCES `employees` (`employee_id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `org_emp_fk_organizations` FOREIGN KEY (`organization_id`) REFERENCES `organizations` (`organization_id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of org_emp
-- ----------------------------
INSERT INTO `org_emp` VALUES (1, 290, 'd03');
INSERT INTO `org_emp` VALUES (2, 278, 'd05');
INSERT INTO `org_emp` VALUES (3, 81, 'd08');
INSERT INTO `org_emp` VALUES (4, 348, 'd02');
INSERT INTO `org_emp` VALUES (5, 216, 'd08');
INSERT INTO `org_emp` VALUES (6, 367, 'd08');
INSERT INTO `org_emp` VALUES (7, 365, 'd06');
INSERT INTO `org_emp` VALUES (8, 495, 'd05');
INSERT INTO `org_emp` VALUES (9, 73, 'd02');
INSERT INTO `org_emp` VALUES (10, 242, 'd01');
INSERT INTO `org_emp` VALUES (11, 132, 'd05');
INSERT INTO `org_emp` VALUES (12, 358, 'd06');
INSERT INTO `org_emp` VALUES (13, 309, 'd01');
INSERT INTO `org_emp` VALUES (14, 375, 'd03');
INSERT INTO `org_emp` VALUES (15, 291, 'd07');
INSERT INTO `org_emp` VALUES (16, 214, 'd06');
INSERT INTO `org_emp` VALUES (17, 22, 'd05');
INSERT INTO `org_emp` VALUES (18, 212, 'd08');
INSERT INTO `org_emp` VALUES (19, 35, 'd07');
INSERT INTO `org_emp` VALUES (20, 117, 'd02');
INSERT INTO `org_emp` VALUES (21, 139, 'd01');
INSERT INTO `org_emp` VALUES (22, 258, 'd04');
INSERT INTO `org_emp` VALUES (23, 220, 'd03');
INSERT INTO `org_emp` VALUES (24, 231, 'd01');
INSERT INTO `org_emp` VALUES (25, 48, 'd05');
INSERT INTO `org_emp` VALUES (26, 442, 'd06');
INSERT INTO `org_emp` VALUES (27, 496, 'd05');
INSERT INTO `org_emp` VALUES (28, 244, 'd07');
INSERT INTO `org_emp` VALUES (29, 408, 'd02');
INSERT INTO `org_emp` VALUES (30, 421, 'd08');
INSERT INTO `org_emp` VALUES (31, 99, 'd08');
INSERT INTO `org_emp` VALUES (32, 265, 'd01');
INSERT INTO `org_emp` VALUES (33, 492, 'd02');
INSERT INTO `org_emp` VALUES (34, 478, 'd05');
INSERT INTO `org_emp` VALUES (35, 93, 'd05');
INSERT INTO `org_emp` VALUES (36, 156, 'd06');
INSERT INTO `org_emp` VALUES (37, 445, 'd04');
INSERT INTO `org_emp` VALUES (38, 194, 'd03');
INSERT INTO `org_emp` VALUES (39, 39, 'd02');
INSERT INTO `org_emp` VALUES (40, 471, 'd05');
INSERT INTO `org_emp` VALUES (41, 61, 'd06');
INSERT INTO `org_emp` VALUES (42, 182, 'd01');
INSERT INTO `org_emp` VALUES (43, 246, 'd05');
INSERT INTO `org_emp` VALUES (44, 396, 'd02');
INSERT INTO `org_emp` VALUES (45, 251, 'd04');
INSERT INTO `org_emp` VALUES (46, 19, 'd07');
INSERT INTO `org_emp` VALUES (47, 89, 'd01');
INSERT INTO `org_emp` VALUES (48, 343, 'd05');
INSERT INTO `org_emp` VALUES (49, 229, 'd08');
INSERT INTO `org_emp` VALUES (50, 83, 'd08');
INSERT INTO `org_emp` VALUES (51, 60, 'd06');
INSERT INTO `org_emp` VALUES (52, 299, 'd04');
INSERT INTO `org_emp` VALUES (53, 108, 'd06');
INSERT INTO `org_emp` VALUES (54, 10, 'd02');
INSERT INTO `org_emp` VALUES (55, 5, 'd01');
INSERT INTO `org_emp` VALUES (56, 430, 'd01');
INSERT INTO `org_emp` VALUES (57, 188, 'd06');
INSERT INTO `org_emp` VALUES (58, 204, 'd08');
INSERT INTO `org_emp` VALUES (59, 135, 'd01');
INSERT INTO `org_emp` VALUES (60, 97, 'd01');
INSERT INTO `org_emp` VALUES (61, 222, 'd07');
INSERT INTO `org_emp` VALUES (62, 483, 'd05');
INSERT INTO `org_emp` VALUES (63, 406, 'd08');
INSERT INTO `org_emp` VALUES (64, 497, 'd06');
INSERT INTO `org_emp` VALUES (65, 59, 'd04');
INSERT INTO `org_emp` VALUES (66, 493, 'd02');
INSERT INTO `org_emp` VALUES (67, 433, 'd05');
INSERT INTO `org_emp` VALUES (68, 9, 'd02');
INSERT INTO `org_emp` VALUES (69, 447, 'd05');
INSERT INTO `org_emp` VALUES (70, 485, 'd08');
INSERT INTO `org_emp` VALUES (71, 411, 'd01');
INSERT INTO `org_emp` VALUES (72, 282, 'd01');
INSERT INTO `org_emp` VALUES (73, 127, 'd05');
INSERT INTO `org_emp` VALUES (74, 237, 'd04');
INSERT INTO `org_emp` VALUES (75, 201, 'd04');
INSERT INTO `org_emp` VALUES (76, 232, 'd04');
INSERT INTO `org_emp` VALUES (77, 410, 'd02');
INSERT INTO `org_emp` VALUES (78, 407, 'd06');
INSERT INTO `org_emp` VALUES (79, 500, 'd02');
INSERT INTO `org_emp` VALUES (80, 241, 'd01');
INSERT INTO `org_emp` VALUES (81, 34, 'd08');
INSERT INTO `org_emp` VALUES (82, 462, 'd02');
INSERT INTO `org_emp` VALUES (83, 491, 'd01');
INSERT INTO `org_emp` VALUES (84, 423, 'd06');
INSERT INTO `org_emp` VALUES (85, 200, 'd02');
INSERT INTO `org_emp` VALUES (86, 13, 'd03');
INSERT INTO `org_emp` VALUES (87, 27, 'd05');
INSERT INTO `org_emp` VALUES (88, 361, 'd02');
INSERT INTO `org_emp` VALUES (89, 332, 'd05');
INSERT INTO `org_emp` VALUES (90, 85, 'd05');
INSERT INTO `org_emp` VALUES (91, 303, 'd08');
INSERT INTO `org_emp` VALUES (92, 77, 'd01');
INSERT INTO `org_emp` VALUES (93, 294, 'd02');
INSERT INTO `org_emp` VALUES (94, 269, 'd06');
INSERT INTO `org_emp` VALUES (95, 125, 'd05');
INSERT INTO `org_emp` VALUES (96, 86, 'd06');
INSERT INTO `org_emp` VALUES (97, 432, 'd02');
INSERT INTO `org_emp` VALUES (98, 250, 'd02');
INSERT INTO `org_emp` VALUES (99, 25, 'd05');
INSERT INTO `org_emp` VALUES (100, 189, 'd06');
INSERT INTO `org_emp` VALUES (101, 98, 'd06');
INSERT INTO `org_emp` VALUES (102, 55, 'd08');
INSERT INTO `org_emp` VALUES (103, 171, 'd02');
INSERT INTO `org_emp` VALUES (104, 435, 'd06');
INSERT INTO `org_emp` VALUES (105, 225, 'd03');
INSERT INTO `org_emp` VALUES (106, 70, 'd02');
INSERT INTO `org_emp` VALUES (107, 209, 'd01');
INSERT INTO `org_emp` VALUES (108, 6, 'd02');
INSERT INTO `org_emp` VALUES (109, 393, 'd07');

-- ----------------------------
-- Table structure for organizations
-- ----------------------------
DROP TABLE IF EXISTS `organizations`;
CREATE TABLE `organizations`  (
  `organization_id` int(11) NOT NULL AUTO_INCREMENT,
  `industry_id` int(11) NOT NULL,
  `organization_name` varchar(100) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `website` varchar(200) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  PRIMARY KEY (`organization_id`) USING BTREE,
  UNIQUE INDEX `organization_name`(`organization_name`) USING BTREE,
  UNIQUE INDEX `website`(`website`) USING BTREE,
  INDEX `organizations_fk_industries`(`industry_id`) USING BTREE,
  CONSTRAINT `organizations_fk_industries` FOREIGN KEY (`industry_id`) REFERENCES `industries` (`industry_id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 503 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of organizations
-- ----------------------------
INSERT INTO `organizations` VALUES (1, 4, '3M', 'https://www.3m.com/');
INSERT INTO `organizations` VALUES (2, 2, 'A & R Tarpaulins, Inc.', 'https://www.artarpaulins.com/');
INSERT INTO `organizations` VALUES (3, 3, 'A Wider Circle', 'https://awidercircle.org/');
INSERT INTO `organizations` VALUES (4, 2, 'AARP', 'https://www.aarp.org/');
INSERT INTO `organizations` VALUES (5, 3, 'ABHES', 'https://www.abhes.org/');
INSERT INTO `organizations` VALUES (6, 2, 'Abt Associates', 'https://www.abtassociates.com/');
INSERT INTO `organizations` VALUES (7, 3, 'Academy Child Development Center', 'https://www.academychild.com/');
INSERT INTO `organizations` VALUES (8, 2, 'Access Intelligence LLC', 'https://www.accessintel.com/');
INSERT INTO `organizations` VALUES (9, 4, 'ACES Group', 'https://www.acesgroup.com/');
INSERT INTO `organizations` VALUES (10, 2, 'Adams Morris & Sessing', 'https://www.amslawgroup.com/');
INSERT INTO `organizations` VALUES (11, 1, 'Advanced Primary & Geriatric Care', 'http://apgcare.com/');
INSERT INTO `organizations` VALUES (12, 4, 'Advanced Window Inc.', 'https://www.advancedwindow.net/');
INSERT INTO `organizations` VALUES (13, 1, 'Adventist HealthCare', 'https://www.adventisthealthcare.com/');
INSERT INTO `organizations` VALUES (14, 2, 'AKYTECH consulting', 'https://akytechconsulting.com/');
INSERT INTO `organizations` VALUES (15, 1, 'Aledade', 'https://www.aledade.com/');
INSERT INTO `organizations` VALUES (16, 1, 'Align Staffing', 'https://alignstaffing.com/');
INSERT INTO `organizations` VALUES (17, 2, 'AllCounted, Inc.', 'https://www.allcounted.com/');
INSERT INTO `organizations` VALUES (18, 2, 'AlmaVerde LLC', 'http://www.almaverdegardening.com/');
INSERT INTO `organizations` VALUES (19, 1, 'ALS Association - DC/MD/VA Chapter', 'http://webdc.alsa.org/site/PageServer?pagename=DC_homepage');
INSERT INTO `organizations` VALUES (20, 2, 'Alvord, Baker & Associates, LLC', 'https://www.alvordbaker.com/');
INSERT INTO `organizations` VALUES (21, 4, 'Amarex Clinical Research', 'https://www.amarexcro.com/index.html');
INSERT INTO `organizations` VALUES (22, 4, 'Amazon', 'https://www.amazon.com/');
INSERT INTO `organizations` VALUES (23, 2, 'American Action Forum', 'https://www.americanactionforum.org/');
INSERT INTO `organizations` VALUES (24, 4, 'American Contracting Corporation', 'https://www.americancontractingcorp.com/index.html');
INSERT INTO `organizations` VALUES (25, 4, 'American Custom Contractors', 'https://americancustomcontractors.com/');
INSERT INTO `organizations` VALUES (26, 3, 'American Dental Association', 'https://www.ada.org/en');
INSERT INTO `organizations` VALUES (27, 4, 'American Fireproofing', 'http://www.americanfireproofing.com/');
INSERT INTO `organizations` VALUES (28, 4, 'American General Supplies', 'https://www.agsusa.com/');
INSERT INTO `organizations` VALUES (29, 4, 'American Institutes for Research', 'https://www.air.org/');
INSERT INTO `organizations` VALUES (30, 2, 'American Pool', 'https://americanpool.com/');
INSERT INTO `organizations` VALUES (31, 3, 'American Speech Language Hearing Association (ASHA)', 'https://www.asha.org/');
INSERT INTO `organizations` VALUES (32, 3, 'American Type Culture Collection (ATCC)', 'https://www.atcc.org/');
INSERT INTO `organizations` VALUES (33, 4, 'AMS', 'https://www.ams-corp.com/');
INSERT INTO `organizations` VALUES (34, 4, 'Analog Bits Inc. (Engineering)', 'https://www.analogbits.com/index.htm');
INSERT INTO `organizations` VALUES (35, 1, 'Anne Arundel Medical Center', 'https://www.aahs.org/');
INSERT INTO `organizations` VALUES (36, 3, 'Aplastic Anemia and MDS Foundation', 'https://www.aamds.org/');
INSERT INTO `organizations` VALUES (37, 3, 'APLUS Learning Center', 'https://www.apluslearninginc.com/apluslearninginc/portal/PortalHome.asp');
INSERT INTO `organizations` VALUES (38, 2, 'Appsential LLC', 'http://www.appsential.com/');
INSERT INTO `organizations` VALUES (39, 2, 'ApTask', 'https://www.aptask.com/');
INSERT INTO `organizations` VALUES (40, 2, 'Arabella Advisors', 'https://www.arabellaadvisors.com/');
INSERT INTO `organizations` VALUES (41, 3, 'Arc of Montgomery County', 'https://thearcmontgomerycounty.org/');
INSERT INTO `organizations` VALUES (42, 2, 'Aronson LLC', 'https://aronsonllc.com/');
INSERT INTO `organizations` VALUES (43, 3, 'Art of Problem Solving Academy', 'https://aopsacademy.org/');
INSERT INTO `organizations` VALUES (44, 3, 'Asbury Methodist Village', 'https://www.asbury.org/asbury-methodist-village/');
INSERT INTO `organizations` VALUES (45, 4, 'ASRC Federal Holding Company', 'https://www.asrcfederal.com/');
INSERT INTO `organizations` VALUES (46, 2, 'AssetBook, LLC', 'https://www.assetbook.com/advisor-solutions/');
INSERT INTO `organizations` VALUES (47, 3, 'Association for Research in Vision and Ophthalmology (ARVO)', 'https://www.arvo.org/');
INSERT INTO `organizations` VALUES (48, 4, 'AstaCRS Inc', 'https://www.astacrs.com/');
INSERT INTO `organizations` VALUES (49, 1, 'Atellis/B-Line Medical.com', 'https://www.blinemedical.com/');
INSERT INTO `organizations` VALUES (50, 2, 'ATHENA Consulting LLC', 'https://athenaconsultingllc.com/');
INSERT INTO `organizations` VALUES (51, 2, 'Audi', 'https://www.audiusa.com/');
INSERT INTO `organizations` VALUES (52, 3, 'Audubon Naturalist Society', 'https://anshome.org/');
INSERT INTO `organizations` VALUES (53, 2, 'Autoscribe Corp', 'https://www.autoscribe.com');
INSERT INTO `organizations` VALUES (54, 3, 'Axios', 'https://www.axios.com/');
INSERT INTO `organizations` VALUES (55, 4, 'Axxess', 'https://www.axxess.com/');
INSERT INTO `organizations` VALUES (56, 2, 'B&M Consulting Group, Inc.', 'https://bm-consulting-group.com/');
INSERT INTO `organizations` VALUES (57, 3, 'Badlands Playspace', 'https://badlandsplayspace.com/');
INSERT INTO `organizations` VALUES (58, 4, 'BAE Systems', 'https://www.baesystems.com/en/home');
INSERT INTO `organizations` VALUES (59, 3, 'Baltimore Orioles', 'https://www.mlb.com/orioles');
INSERT INTO `organizations` VALUES (60, 2, 'Barrow Wise Consulting, LLC', 'https://www.barrowwise.com/');
INSERT INTO `organizations` VALUES (61, 2, 'Bayard Advertising', 'https://bayardad.com/');
INSERT INTO `organizations` VALUES (62, 4, 'Bechtel', 'https://www.bechtel.com/');
INSERT INTO `organizations` VALUES (63, 3, 'Bethesda Fire Department', 'http://www.bethesdafire.org/');
INSERT INTO `organizations` VALUES (64, 4, 'Big Blue Bubble, Inc.', 'https://www.bigbluebubble.com/overview/');
INSERT INTO `organizations` VALUES (65, 3, 'BioHealth Innovation, Inc.', 'http://www.biohealthinnovation.org/');
INSERT INTO `organizations` VALUES (66, 3, 'Bipartisan Policy Center', 'https://bipartisanpolicy.org/');
INSERT INTO `organizations` VALUES (67, 2, 'Birchstone Moore LLC.', 'http://www.birchstonemoore.com/');
INSERT INTO `organizations` VALUES (68, 3, 'BlackRock Center for the Arts', 'https://www.blackrockcenter.org/');
INSERT INTO `organizations` VALUES (69, 2, 'BLH Technologies', 'https://blhtech.com/about');
INSERT INTO `organizations` VALUES (70, 2, 'Blueridge Restaurant Group', 'https://brrgrestaurants.com/');
INSERT INTO `organizations` VALUES (71, 2, 'BrightKey, Inc.', 'http://www.brightkey.net/');
INSERT INTO `organizations` VALUES (72, 2, 'Brilliant Earth', 'https://www.brilliantearth.com/');
INSERT INTO `organizations` VALUES (73, 2, 'Buckle', 'https://www.buckle.com/');
INSERT INTO `organizations` VALUES (74, 2, 'Burness', 'https://burness.com/');
INSERT INTO `organizations` VALUES (75, 2, 'C Management Inc', 'https://www.c-managementinc.com/');
INSERT INTO `organizations` VALUES (76, 3, 'C3 Cyber Club', 'https://c3cyberclub.com/');
INSERT INTO `organizations` VALUES (77, 3, 'Camp Pontiac', 'https://www.camppontiac.com/');
INSERT INTO `organizations` VALUES (78, 3, 'Campus Compact Mid-Atlantic', 'https://midatlantic.compact.org');
INSERT INTO `organizations` VALUES (79, 2, 'Canopy by Hilton Washington DC Bethesda North', 'https://www.hilton.com/en/hotels/dcabnpy-canopy-washington-dc-bethesda-north/');
INSERT INTO `organizations` VALUES (80, 2, 'Carlisle Etcetera LLC', 'https://www.carlislecollection.com');
INSERT INTO `organizations` VALUES (81, 4, 'Carousel Industries', 'https://www.carouselindustries.com/');
INSERT INTO `organizations` VALUES (82, 1, 'Centers for Advanced Orthopedics', 'https://www.cfaortho.com/');
INSERT INTO `organizations` VALUES (83, 4, 'Century Engineering, Inc.', 'https://www.centuryeng.com/');
INSERT INTO `organizations` VALUES (84, 2, 'CEO Worldwide Ltd', 'https://www.ceo-worldwide.com/');
INSERT INTO `organizations` VALUES (85, 4, 'Certis USA', 'https://www.certisusa.com/');
INSERT INTO `organizations` VALUES (86, 2, 'CFI Group', 'https://cfigroup.com/');
INSERT INTO `organizations` VALUES (87, 3, 'Charlestown Retirement Community', 'https://www.ericksonliving.com/charlestown');
INSERT INTO `organizations` VALUES (88, 2, 'Chick-fil-A Westfield Montgomery Mall', 'https://www.chick-fil-a.com/locations/md/westfield-montgomery-mall-md');
INSERT INTO `organizations` VALUES (89, 3, 'Children\'s Law Center', 'https://www.childrenslawcenter.org/');
INSERT INTO `organizations` VALUES (90, 4, 'Cipher Tech Solutions', 'https://www.ciphertechsolutions.com/');
INSERT INTO `organizations` VALUES (91, 3, 'City of Gaithersburg', 'https://www.gaithersburgmd.gov/government/job-opportunities');
INSERT INTO `organizations` VALUES (92, 4, 'City Xpress', 'http://www.cxdelivery.com/');
INSERT INTO `organizations` VALUES (93, 4, 'Clark Construction', 'https://www.clarkconstruction.com/');
INSERT INTO `organizations` VALUES (94, 1, 'Classen-Miller & Associates', 'http://www.classen-miller.com/');
INSERT INTO `organizations` VALUES (95, 3, 'CLCA - Changing the Lives of Children with Autism', 'https://www.clcautism.org/');
INSERT INTO `organizations` VALUES (96, 3, 'Climate Institute', 'http://climate.org/');
INSERT INTO `organizations` VALUES (97, 2, 'CloserIQ', 'https://closeriq.com/');
INSERT INTO `organizations` VALUES (98, 2, 'Clyde\'s Restaurant Group', 'https://www.clydes.com/');
INSERT INTO `organizations` VALUES (99, 3, 'Code Ninjas', 'https://www.codeninjas.com/');
INSERT INTO `organizations` VALUES (100, 2, 'CohnReznick LLP', 'https://www.cohnreznick.com/');
INSERT INTO `organizations` VALUES (101, 4, 'Comcast', 'https://business.comcast.com/');
INSERT INTO `organizations` VALUES (102, 3, 'Committee for Montgomery', 'http://www.committeeformontgomery.org/');
INSERT INTO `organizations` VALUES (103, 3, 'CoMMotion Dance Pilates Fitness', 'https://commotiondance.com/');
INSERT INTO `organizations` VALUES (104, 3, 'Conexión Escolar', 'http://conexionescolar.org/index.html');
INSERT INTO `organizations` VALUES (105, 3, 'Conflict Resolution Center of Montgomery County', 'http://crcmc.org/');
INSERT INTO `organizations` VALUES (106, 3, 'Congressman John Sarbanes (D-Md.)', 'https://sarbanes.house.gov/');
INSERT INTO `organizations` VALUES (107, 2, 'Corporate Health Resources, Inc.', 'https://chr.com/');
INSERT INTO `organizations` VALUES (108, 2, 'Costco Wholesale', 'https://www.costco.com/');
INSERT INTO `organizations` VALUES (109, 3, 'Court Watch Montgomery', 'https://courtwatchmontgomery.org/');
INSERT INTO `organizations` VALUES (110, 2, 'Couture Bridal of Maryland', 'https://www.couturebridalmd.com/');
INSERT INTO `organizations` VALUES (111, 1, 'Crofton Care and Rehabilitation Center', 'http://www.croftoncrc.com/');
INSERT INTO `organizations` VALUES (112, 2, 'Crown Trophy', 'https://www.crowntrophy.com/');
INSERT INTO `organizations` VALUES (113, 3, 'CSAAC', 'http://csaac.org/');
INSERT INTO `organizations` VALUES (114, 2, 'Currency Exchange International', 'http://www.bethesdacurrencyexchange.com/');
INSERT INTO `organizations` VALUES (115, 3, 'DAI', 'https://www.dai.com/');
INSERT INTO `organizations` VALUES (116, 2, 'David Munson Agency', 'https://www.statefarm.com/agent/us/md/bethesda/david-munson-cmrnq4qwcak');
INSERT INTO `organizations` VALUES (117, 4, 'DAVIS Construction', 'https://www.davisconstruction.com/');
INSERT INTO `organizations` VALUES (118, 2, 'DealerOn', 'https://www.dealeron.com/');
INSERT INTO `organizations` VALUES (119, 2, 'DeHoff & DeHoff CPA\'s', 'http://www.dndcpa.com/');
INSERT INTO `organizations` VALUES (120, 2, 'Dejana Truck and Utility Equipment LLC', 'https://dejana.com/');
INSERT INTO `organizations` VALUES (121, 2, 'DeLeon & CPA\'s & Advisors', 'https://deleonandstang.com/');
INSERT INTO `organizations` VALUES (122, 3, 'Democracy Fund', 'https://www.democracyfund.org/');
INSERT INTO `organizations` VALUES (123, 2, 'Denizens Brewing Company', 'https://denizensbrewingco.com/');
INSERT INTO `organizations` VALUES (124, 1, 'Diakon Lutheran Social Ministries', 'https://www.diakon.org/');
INSERT INTO `organizations` VALUES (125, 4, 'Disruptive Endeavors', 'https://www.disruptiveendeavors.com/');
INSERT INTO `organizations` VALUES (126, 1, 'District Mobile Dental', 'https://districtmobiledental.com/');
INSERT INTO `organizations` VALUES (127, 4, 'Diversant', 'https://www.diversant.com/');
INSERT INTO `organizations` VALUES (128, 4, 'DNC Architects, Inc.', 'http://www.dncarch.com/');
INSERT INTO `organizations` VALUES (129, 3, 'Docs in Progress', 'https://www.docsinprogress.org/');
INSERT INTO `organizations` VALUES (130, 4, 'Donohoe Construction Company', 'https://www.donohoe.com/');
INSERT INTO `organizations` VALUES (131, 1, 'DrFirst', 'https://drfirst.com/');
INSERT INTO `organizations` VALUES (132, 2, 'E. Cohen', 'https://ecohen.com/');
INSERT INTO `organizations` VALUES (133, 4, 'EAI Technologies', 'https://www.eaiti.com/landing');
INSERT INTO `organizations` VALUES (134, 3, 'Echo Hill Outdoor School', 'https://www.ehos.org/');
INSERT INTO `organizations` VALUES (135, 3, 'Editorial Projects in Education', 'https://www.edweek.org/ew/index.html');
INSERT INTO `organizations` VALUES (136, 2, 'Edwards Performance Solutions', 'https://edwps.com/');
INSERT INTO `organizations` VALUES (137, 4, 'Emergent BioSolutions', 'https://www.emergentbiosolutions.com/');
INSERT INTO `organizations` VALUES (138, 2, 'Employer Assurance Solutions', 'http://employerassurance.com/');
INSERT INTO `organizations` VALUES (139, 3, 'Entercom', 'https://entercom.com/');
INSERT INTO `organizations` VALUES (140, 2, 'Enterprise Rent-A-Car', 'https://www.enterprise.com/en/home.html');
INSERT INTO `organizations` VALUES (141, 3, 'Epworth United Methodist Church', 'https://www.epworthunited.org/');
INSERT INTO `organizations` VALUES (142, 2, 'Eric Stewart Group of Long & Foster Realtors', 'https://www.longandfoster.com/EricStewart');
INSERT INTO `organizations` VALUES (143, 2, 'Erie Insurance Group', 'https://www.erieinsurance.com/');
INSERT INTO `organizations` VALUES (144, 2, 'Essex Bank', 'https://www.essexbank.com/');
INSERT INTO `organizations` VALUES (145, 3, 'Everest Tutors & Test Prep', 'http://www.everesttutors.net/');
INSERT INTO `organizations` VALUES (146, 3, 'EveryMind', 'https://www.every-mind.org/');
INSERT INTO `organizations` VALUES (147, 3, 'Excel Youth', 'https://www.excelyouth.com/');
INSERT INTO `organizations` VALUES (148, 2, 'Exelon', 'https://www.exeloncorp.com/');
INSERT INTO `organizations` VALUES (149, 3, 'Exiger', 'https://www.exiger.com/');
INSERT INTO `organizations` VALUES (150, 3, 'Expressive Therapy Center, LLC', 'http://www.expressivetherapycenter.com/');
INSERT INTO `organizations` VALUES (151, 2, 'Extraordinary Entertainment', 'https://www.bookextraordinary.com/#home-page');
INSERT INTO `organizations` VALUES (152, 3, 'Family Learning Solutions, Inc.', 'https://flsinc.org/');
INSERT INTO `organizations` VALUES (153, 3, 'Family Services, Inc', 'https://www.sheppardpratt.org/family-services-inc/');
INSERT INTO `organizations` VALUES (154, 3, 'Farm at Our House', 'http://www.thefarmatourhouse.com/');
INSERT INTO `organizations` VALUES (155, 2, 'Fastenal', 'https://www.fastenal.com/');
INSERT INTO `organizations` VALUES (156, 2, 'Federal Highway Administration', 'https://highways.dot.gov/');
INSERT INTO `organizations` VALUES (157, 3, 'First Book', 'https://firstbook.org/');
INSERT INTO `organizations` VALUES (158, 4, 'First Data Corporation', 'https://www.firstdata.com/');
INSERT INTO `organizations` VALUES (159, 1, 'FleishmanHillard', 'https://fleishmanhillard.com/');
INSERT INTO `organizations` VALUES (160, 4, 'FLIR', 'https://www.flir.com/');
INSERT INTO `organizations` VALUES (161, 2, 'Flower Child', 'https://www.iamaflowerchild.com/');
INSERT INTO `organizations` VALUES (162, 4, 'Forrester Construction', 'https://www.forresterconstruction.com/');
INSERT INTO `organizations` VALUES (163, 3, 'Foundation for Advanced Education in the Sciences', 'https://faes.org/');
INSERT INTO `organizations` VALUES (164, 3, 'Foundation for the National Institutes of Health', 'https://fnih.org/');
INSERT INTO `organizations` VALUES (165, 2, 'Gresham Cahn LLC', 'https://greshamcahn.com/');
INSERT INTO `organizations` VALUES (166, 3, 'Friendship Pharmacy', 'https://www.friendship-rx.com/');
INSERT INTO `organizations` VALUES (167, 2, 'Fully Promoted', 'https://fullypromoted.com/');
INSERT INTO `organizations` VALUES (168, 3, 'Fusion Academy Rockville', 'https://www.fusionacademy.com/');
INSERT INTO `organizations` VALUES (169, 3, 'Future Link', 'https://futurelinkmd.org/');
INSERT INTO `organizations` VALUES (170, 4, 'Gaithersburg Veterinary Clinic', 'https://www.gaithersburgvet.com/');
INSERT INTO `organizations` VALUES (171, 2, 'GCI', 'https://www.gci.com/');
INSERT INTO `organizations` VALUES (172, 2, 'Geico', 'https://www.geico.com/');
INSERT INTO `organizations` VALUES (173, 3, 'Montgomery County Office of Intergovernmental Relations', 'https://www.montgomerycountymd.gov/oir/');
INSERT INTO `organizations` VALUES (174, 4, 'General Dynamics Information Technology', 'https://www.gdit.com/');
INSERT INTO `organizations` VALUES (175, 4, 'General Electric', 'https://www.ge.com/');
INSERT INTO `organizations` VALUES (176, 2, 'Georgetown University Hotel and Conference Center', 'https://www.acc-guhotelandconferencecenter.com/');
INSERT INTO `organizations` VALUES (177, 2, 'Giant', 'https://giantfood.com/');
INSERT INTO `organizations` VALUES (178, 3, 'Girls On The Run of Montgomery County', 'www.girlsontherunofmoco.org');
INSERT INTO `organizations` VALUES (179, 4, 'GSK', 'https://www.gsk.com/');
INSERT INTO `organizations` VALUES (180, 2, 'Glenstone Museum', 'https://www.glenstone.org/');
INSERT INTO `organizations` VALUES (181, 2, 'GMMB Inc.', 'https://gmmb.com/');
INSERT INTO `organizations` VALUES (182, 3, 'Go Ape USA', 'https://www.goape.com/');
INSERT INTO `organizations` VALUES (183, 3, 'Goldfish Swim School - Rockville', 'https://www.goldfishswimschool.com/rockville/');
INSERT INTO `organizations` VALUES (184, 4, 'Goodwin Brothers Shades & Specialties', 'https://gbshades.com/');
INSERT INTO `organizations` VALUES (185, 4, 'Google, Inc', 'https://about.google/');
INSERT INTO `organizations` VALUES (186, 3, 'Green & Healthy Homes Initiative', 'https://www.greenandhealthyhomes.org/');
INSERT INTO `organizations` VALUES (187, 3, 'Green Acres School', 'https://www.greenacres.org/');
INSERT INTO `organizations` VALUES (188, 2, 'Greenblatt & Veliev', 'https://www.lonnielawoffice.com/');
INSERT INTO `organizations` VALUES (189, 2, 'Gregory Welteroth Advertising', 'https://www.gwa-inc.com/');
INSERT INTO `organizations` VALUES (190, 4, 'GRSi', 'https://www.grsi.com/');
INSERT INTO `organizations` VALUES (191, 4, 'Grunley Construction Company, Inc.', 'https://www.grunley.com/');
INSERT INTO `organizations` VALUES (192, 4, 'Gryphon Scientific', 'https://www.gryphonscientific.com/');
INSERT INTO `organizations` VALUES (193, 2, 'Gypsy Diva Fresh Catering', 'https://gypsydivafresh.com/');
INSERT INTO `organizations` VALUES (194, 1, 'H.C. Nye Company, Inc.', 'https://www.hcnyeco.com/');
INSERT INTO `organizations` VALUES (195, 4, 'Harris Corporation', 'https://www.harris.com/');
INSERT INTO `organizations` VALUES (196, 3, 'Headfirst Summer Camps', 'https://www.headfirstcamps.com/');
INSERT INTO `organizations` VALUES (197, 1, 'HealthFitness', 'https://www.healthfitness.com/');
INSERT INTO `organizations` VALUES (198, 3, 'Healthy Foundations Group', 'https://healthyfoundationsgroup.com/');
INSERT INTO `organizations` VALUES (199, 2, 'Hershey Entertainment & Resorts Company', 'https://www.hersheyjobs.com/');
INSERT INTO `organizations` VALUES (200, 2, 'HireArt', 'https://www.hireart.com/');
INSERT INTO `organizations` VALUES (201, 3, 'History Associates Incorporated', 'https://www.historyassociates.com/');
INSERT INTO `organizations` VALUES (202, 4, 'Home Technology Architects', 'https://htarchitects.com/');
INSERT INTO `organizations` VALUES (203, 2, 'Home2 Suites by Hilton Silver Spring', 'https://www.hilton.com/en/hotels/dcahtht-home2-suites-silver-spring/');
INSERT INTO `organizations` VALUES (204, 2, 'Hooked', 'https://www.hookedapp.com/');
INSERT INTO `organizations` VALUES (205, 1, 'Hospice Caring, Inc.', 'https://www.caringmatters.org/');
INSERT INTO `organizations` VALUES (206, 3, 'House Committee on Rules', 'https://rules.house.gov/');
INSERT INTO `organizations` VALUES (207, 3, 'House Energy and Commerce Committee', 'https://energycommerce.house.gov/');
INSERT INTO `organizations` VALUES (208, 3, 'House Judiciary Committee', 'https://judiciary.house.gov/');
INSERT INTO `organizations` VALUES (209, 3, 'House Vacancy Announcement and Placement Service (HVAPS)', 'https://www.house.gov/employment/positions-with-members-and-committees');
INSERT INTO `organizations` VALUES (210, 2, 'Hyatt Regency Chesapeake Bay Golf Resort, Spa and Marina', 'https://www.hyatt.com/en-US/hotel/maryland/hyatt-regency-chesapeake-bay-golf-resort-spa-and-marina/chesa');
INSERT INTO `organizations` VALUES (211, 4, 'Institute for Bioscience and Biotechnology Research (IBBR)', 'https://www.ibbr.umd.edu/');
INSERT INTO `organizations` VALUES (212, 4, 'IBM Design', 'https://www.ibm.com/design/');
INSERT INTO `organizations` VALUES (213, 4, 'IBM, North Carolina', 'https://www.ibm.com/us-en/?ar=1');
INSERT INTO `organizations` VALUES (214, 2, 'ICF', 'https://www.icf.com/');
INSERT INTO `organizations` VALUES (215, 3, 'Identity, Inc.', 'https://identity-youth.org/');
INSERT INTO `organizations` VALUES (216, 4, 'iDirect', 'https://www.idirect.net/');
INSERT INTO `organizations` VALUES (217, 3, 'iHeart Radio', 'https://www.iheart.com/');
INSERT INTO `organizations` VALUES (218, 2, 'IHG', 'https://www.ihg.com/hotels/us/en/reservation');
INSERT INTO `organizations` VALUES (219, 1, 'IM=X Pilates & Fitness', 'https://www.imxpilates.com/');
INSERT INTO `organizations` VALUES (220, 1, 'Immunomic Therapeutics', 'https://www.immunomix.com/');
INSERT INTO `organizations` VALUES (221, 2, 'ImpactAssets', 'https://www.impactassets.org/');
INSERT INTO `organizations` VALUES (222, 1, 'Independence Now', 'http://www.innow.org/');
INSERT INTO `organizations` VALUES (223, 1, 'Ingleside at King Farm', 'https://www.ikfmd.org/');
INSERT INTO `organizations` VALUES (224, 2, 'Innovative Global Solutions LLC', 'http://www.igscg.com/');
INSERT INTO `organizations` VALUES (225, 1, 'Inova Health Systems', 'https://www.inova.org/');
INSERT INTO `organizations` VALUES (226, 4, 'Institutional Shareholder Services (ISS)', 'https://www.issgovernance.com/');
INSERT INTO `organizations` VALUES (227, 4, 'Integrated Financial Engineering Inc.', 'http://www.ifegroup.com/');
INSERT INTO `organizations` VALUES (228, 4, 'Intelligent Automation, Inc.', 'https://www.i-a-i.com/');
INSERT INTO `organizations` VALUES (229, 4, 'Intelligent Medical Objects', 'https://www.imohealth.com/');
INSERT INTO `organizations` VALUES (230, 3, 'Interfaith Works', 'https://www.iworksmc.org/');
INSERT INTO `organizations` VALUES (231, 3, 'International Arts & Artists at Hillyer', 'https://www.artsandartists.org/');
INSERT INTO `organizations` VALUES (232, 3, 'International Baccalaureate', 'https://www.ibo.org/');
INSERT INTO `organizations` VALUES (233, 4, 'IOMAXIS', 'http://www.iomaxis.com/');
INSERT INTO `organizations` VALUES (234, 3, 'IQ Solutions, Inc.', 'https://www.iqsolutions.com/');
INSERT INTO `organizations` VALUES (235, 2, 'IST Bookkeeping & Management LLC', 'https://www.linkedin.com/in/irenetzamaras/');
INSERT INTO `organizations` VALUES (236, 3, 'Ivymount School', 'https://www.ivymount.org/');
INSERT INTO `organizations` VALUES (237, 3, 'Jefunira Camp', 'https://jefuniracamp.com/site/');
INSERT INTO `organizations` VALUES (238, 2, 'JIMN, LLC (d/b/a Jack Wan, CPA)', 'http://www.jackwancpa.com/');
INSERT INTO `organizations` VALUES (239, 2, 'JLL', 'https://www.us.jll.com/');
INSERT INTO `organizations` VALUES (240, 2, 'JLM HR Consulting', 'https://www.jlm-hrconsulting.com/');
INSERT INTO `organizations` VALUES (241, 3, 'John L. Gildner Regional Institute for Children & Adolescents', 'https://www.montgomeryschoolsmd.org/schools/rica/');
INSERT INTO `organizations` VALUES (242, 2, 'John Marshall Bank', 'https://www.johnmarshallbank.com/');
INSERT INTO `organizations` VALUES (243, 2, 'JTR Consulting Ltd', 'http://www.jtrconsultancy.com/');
INSERT INTO `organizations` VALUES (244, 1, 'Jubilee Association of Maryland, Inc.', 'https://www.jubileemd.org/');
INSERT INTO `organizations` VALUES (245, 1, 'Kaiser Permanente', 'https://healthy.kaiserpermanente.org/');
INSERT INTO `organizations` VALUES (246, 4, 'KaleidoGlobe', 'https://kaleidoglobe.com/');
INSERT INTO `organizations` VALUES (247, 2, 'Kanter and Wishnow', 'http://www.kanterandwishnow.com/');
INSERT INTO `organizations` VALUES (248, 2, 'Kaulkin Ginsberg Company', 'https://kaulkin.com/');
INSERT INTO `organizations` VALUES (249, 4, 'Keller Construction Management', 'https://www.kellercm.com/');
INSERT INTO `organizations` VALUES (250, 2, 'Key Acquisition Partners', 'https://www.keyacquisition.com/');
INSERT INTO `organizations` VALUES (251, 3, 'Kid\'s Villa', 'https://www.kidsvillalearningcenter.com/');
INSERT INTO `organizations` VALUES (252, 2, 'King|Hall LLC', 'https://kinghall-law.com/');
INSERT INTO `organizations` VALUES (253, 3, 'L.A.C.E.S.', 'http://www.laces.org/');
INSERT INTO `organizations` VALUES (254, 2, 'Lakewood Country Club', 'https://www.lakewoodcc.org/');
INSERT INTO `organizations` VALUES (255, 2, 'Laserfiche', 'https://www.laserfiche.com/');
INSERT INTO `organizations` VALUES (256, 2, 'Law Offices of Raj S. Singh', 'https://uslawyersdb.com/attorney11355');
INSERT INTO `organizations` VALUES (257, 2, 'Lawrence J. Green, MD, LLC', 'https://www.lawrencegreenmd.com/');
INSERT INTO `organizations` VALUES (258, 3, 'Leadership for Educational Equity', 'https://educationalequity.org/');
INSERT INTO `organizations` VALUES (259, 3, 'League of Women Voters of Maryland', 'https://www.lwvmd.org/');
INSERT INTO `organizations` VALUES (260, 4, 'Leidos', 'https://www.leidos.com/');
INSERT INTO `organizations` VALUES (261, 4, 'LexSource', 'https://lexsource.com/');
INSERT INTO `organizations` VALUES (262, 3, 'Liberty Promise', 'https://www.libertyspromise.org/');
INSERT INTO `organizations` VALUES (263, 3, 'Library of Congress (Washington, DC)', 'https://www.loc.gov/');
INSERT INTO `organizations` VALUES (264, 2, 'Life of Riley: Pet Hotel & Spa', 'https://www.lifeofriley.co/');
INSERT INTO `organizations` VALUES (265, 3, 'Lindamood-Bell Learning Processes', 'https://lindamoodbell.com/');
INSERT INTO `organizations` VALUES (266, 1, 'Linical Accelovance America Headquarters', 'https://www.accelovance.com/');
INSERT INTO `organizations` VALUES (267, 2, 'Liquidity Services', 'https://www.liquidityservices.com/');
INSERT INTO `organizations` VALUES (268, 2, 'LitCon Group, LLC', 'https://litcongroup.com/');
INSERT INTO `organizations` VALUES (269, 2, 'Littler Mendelson PC', 'https://www.littler.com/');
INSERT INTO `organizations` VALUES (270, 4, 'Lockheed Martin', 'https://www.lockheedmartin.com/en-us/index.html');
INSERT INTO `organizations` VALUES (271, 4, 'LTS NJ INC', 'http://www.ltsecurityinc.com/');
INSERT INTO `organizations` VALUES (272, 2, 'Lydon Fetterolf Corydon, P.A.', 'https://www.lydoncpa.com/');
INSERT INTO `organizations` VALUES (273, 1, 'MacroGenics, Inc', 'https://www.macrogenics.com/');
INSERT INTO `organizations` VALUES (274, 2, 'Macy\'s Department Store', 'https://www.macys.com/');
INSERT INTO `organizations` VALUES (275, 2, 'Managed Care Advisors', 'https://mcacares.com/');
INSERT INTO `organizations` VALUES (276, 2, 'Manheim Baltimore-Washington', 'https://publish.manheim.com/en/locations/us-locations/manheim-baltimore-washington.html');
INSERT INTO `organizations` VALUES (277, 2, 'Marriott International', 'https://www.marriott.com/default.mi');
INSERT INTO `organizations` VALUES (278, 3, 'Maryland Coalition Against Sexual Assault', 'https://mcasa.org/');
INSERT INTO `organizations` VALUES (279, 1, 'Maryland Orthopedic Specialists', 'https://www.mdorthospecialists.com/');
INSERT INTO `organizations` VALUES (280, 3, 'Maryland Tech Council', 'https://mdtechcouncil.com/');
INSERT INTO `organizations` VALUES (281, 2, 'Mastiha Artisan Greek Bakery', 'https://mastihabakery.com/');
INSERT INTO `organizations` VALUES (282, 3, 'Match Education', 'http://www.matcheducation.org/');
INSERT INTO `organizations` VALUES (283, 3, 'Mathnasium Gaithersburg', 'https://www.mathnasium.com/gaithersburg');
INSERT INTO `organizations` VALUES (284, 3, 'Mathnasium Potomac', 'https://www.mathnasium.com/potomac');
INSERT INTO `organizations` VALUES (285, 3, 'Montgomery County Public Schools (MCPS)', 'https://www.montgomeryschoolsmd.org/');
INSERT INTO `organizations` VALUES (286, 3, 'Meaningful Futures', 'http://www.meaningfulfutures.org/');
INSERT INTO `organizations` VALUES (287, 4, 'Media Cybernetics, Inc.', 'https://www.mediacy.com/');
INSERT INTO `organizations` VALUES (288, 1, 'Medical Access', 'https://www.medicalaccessmd.com/');
INSERT INTO `organizations` VALUES (289, 1, 'MedRevive MedSpa', 'http://www.medrevive.com/');
INSERT INTO `organizations` VALUES (290, 1, 'MedStar Georgetown University Hospital', 'https://www.medstargeorgetown.org/home-2/');
INSERT INTO `organizations` VALUES (291, 1, 'MedStar Health', 'https://www.medstarhealth.org/home-2/');
INSERT INTO `organizations` VALUES (292, 1, 'MedStar Washington Hospital Center', 'https://www.medstarwashington.org/');
INSERT INTO `organizations` VALUES (293, 3, 'Men\'s Health Network', 'http://www.menshealthnetwork.org');
INSERT INTO `organizations` VALUES (294, 2, 'Mercury Associates, Inc.', 'https://mercury-assoc.com/');
INSERT INTO `organizations` VALUES (295, 4, 'Meso Scale Diagnostics, LLC', 'https://www.mesoscale.com/');
INSERT INTO `organizations` VALUES (296, 2, 'Metro Microgreens', 'https://metromicrogreens.com/');
INSERT INTO `organizations` VALUES (297, 2, 'Mid-Atlantic Federal Credit Union', 'https://www.mafcu.org/');
INSERT INTO `organizations` VALUES (298, 1, 'Mid-Atlantic Permanente Medical Group', 'https://mydoctor.kaiserpermanente.org/mas/');
INSERT INTO `organizations` VALUES (299, 3, 'Mid-Minnesota Legal Aid (Minneapolis, MN)', 'https://mylegalaid.org/about/locations/');
INSERT INTO `organizations` VALUES (300, 4, 'Miller and Long Concrete Construction', 'https://www.millerandlong.com/');
INSERT INTO `organizations` VALUES (301, 3, 'Minority Access, Inc.', 'http://www.minorityaccess.org/');
INSERT INTO `organizations` VALUES (302, 2, 'Mission Dispensaries', 'https://missiondispensaries.com/');
INSERT INTO `organizations` VALUES (303, 4, 'Mode Analytics', 'https://mode.com/');
INSERT INTO `organizations` VALUES (304, 3, 'Modern Muse Education, LLC', 'https://www.modernmuseeducation.com/');
INSERT INTO `organizations` VALUES (305, 2, 'Modus Hotels', 'https://modushotels.com/');
INSERT INTO `organizations` VALUES (306, 2, 'Mom\'s Organic Market', 'https://momsorganicmarket.com/');
INSERT INTO `organizations` VALUES (307, 3, 'Montgomery Child Care Association Inc.', 'http://mccaedu.org/');
INSERT INTO `organizations` VALUES (308, 3, 'Montgomery County Association of Administrators and Principals', 'https://www.mcaapmd.org/');
INSERT INTO `organizations` VALUES (309, 3, 'Montgomery County Child Welfare', 'https://www.montgomerycountymd.gov/HHS-Program/Program.aspx?id=CYF/CYFChildWelfare-p214.html');
INSERT INTO `organizations` VALUES (310, 3, 'Montgomery County Department of Health and Human Services', 'https://www.montgomerycountymd.gov/hhs/');
INSERT INTO `organizations` VALUES (311, 3, 'Montgomery County Department of Transportation', 'https://www.montgomerycountymd.gov/DOT/');
INSERT INTO `organizations` VALUES (312, 3, 'Montgomery County Government', 'https://www.montgomerycountymd.gov/');
INSERT INTO `organizations` VALUES (313, 3, 'Montgomery County Police Department', 'https://www.montgomerycountymd.gov/pol/');
INSERT INTO `organizations` VALUES (314, 3, 'Montgomery County Recreation- Youth Development Team', 'https://www.montgomerycountymd.gov/rec/activitiesandprograms/youthdevelopment/');
INSERT INTO `organizations` VALUES (315, 3, 'Montgomery Village Foundation', 'https://www.montgomeryvillage.com/');
INSERT INTO `organizations` VALUES (316, 2, 'Moorenkos', 'http://moorenkos.com/');
INSERT INTO `organizations` VALUES (317, 2, 'More With Us, Inc.', 'https://morewithus.com/');
INSERT INTO `organizations` VALUES (318, 3, 'Mothers Against Drunk Driving', 'https://www.madd.org/');
INSERT INTO `organizations` VALUES (319, 2, 'MTA Visions', 'http://www.mtavisions.com/');
INSERT INTO `organizations` VALUES (320, 2, 'MUFG Investor Services', 'https://www.mufg-investorservices.com/');
INSERT INTO `organizations` VALUES (321, 4, 'myDigitalOffice', 'https://mydigitaloffice.com/');
INSERT INTO `organizations` VALUES (322, 2, 'Nalley Fresh', 'https://www.nalleyfresh.com/');
INSERT INTO `organizations` VALUES (323, 3, 'NAMI (National Alliance on Mental Illness)', 'https://www.nami.org/');
INSERT INTO `organizations` VALUES (324, 3, 'National Center for Missing & Exploited Children', 'https://www.missingkids.org/home');
INSERT INTO `organizations` VALUES (325, 1, 'National Human Genome Research Institute (NHGRI), NIH', 'https://www.genome.gov/');
INSERT INTO `organizations` VALUES (326, 3, 'National Korean American Service & Education Consortium (NAKASEC)', 'https://nakasec.org/');
INSERT INTO `organizations` VALUES (327, 3, 'National Law Center on Homelessness & Poverty', 'https://nlchp.org/');
INSERT INTO `organizations` VALUES (328, 3, 'National League of Cities', 'https://www.nlc.org/');
INSERT INTO `organizations` VALUES (329, 3, 'National Park Trust', 'https://www.parktrust.org/');
INSERT INTO `organizations` VALUES (330, 4, 'National Security Agency', 'https://www.nsa.gov/');
INSERT INTO `organizations` VALUES (331, 1, 'Naval Medical Research Center', 'https://www.med.navy.mil/sites/nmrc/NMRC/Pages/NMRC.aspx');
INSERT INTO `organizations` VALUES (332, 4, 'Nichols Contracting', 'https://nicholscontracting.com/');
INSERT INTO `organizations` VALUES (333, 1, 'NIH', 'https://www.nih.gov/');
INSERT INTO `organizations` VALUES (334, 2, 'NIH Federal Credit Union (NIHFCU)', 'https://www.nihfcu.org/');
INSERT INTO `organizations` VALUES (335, 1, 'NIST Center for Neutron Research', 'https://www.nist.gov/ncnr');
INSERT INTO `organizations` VALUES (336, 3, 'Nobel Learning Communities', 'https://www.springeducationgroup.com/');
INSERT INTO `organizations` VALUES (337, 4, 'Noblis', 'https://noblis.org/');
INSERT INTO `organizations` VALUES (338, 3, 'Nonprofit Montgomery', 'https://www.nonprofitmoco.org/');
INSERT INTO `organizations` VALUES (339, 3, 'Nonprofit Village', 'https://thenonprofitvillage.org/');
INSERT INTO `organizations` VALUES (340, 4, 'Noobaid', 'http://www.noobaid.com/');
INSERT INTO `organizations` VALUES (341, 4, 'North Capitol Partners', 'http://ncapitol.com/');
INSERT INTO `organizations` VALUES (342, 4, 'Northramp', 'https://www.northramp.com/');
INSERT INTO `organizations` VALUES (343, 4, 'Northrop Grumman', 'https://www.northropgrumman.com/');
INSERT INTO `organizations` VALUES (344, 3, 'Office of Congressman Trone', 'https://www.davidtrone.com/');
INSERT INTO `organizations` VALUES (345, 3, 'Office of Management and Budget', 'https://www.whitehouse.gov/omb/');
INSERT INTO `organizations` VALUES (346, 4, 'Ogilvy', 'https://www.ogilvy.com/');
INSERT INTO `organizations` VALUES (347, 2, 'Ohana Wellness', 'https://ohanawellnessbethesda.com/');
INSERT INTO `organizations` VALUES (348, 2, 'OMNITEC Solutions, Inc.', 'https://www.omnitecinc.com/');
INSERT INTO `organizations` VALUES (349, 2, 'On The Marc Media', 'https://onthemarcmedia.com/');
INSERT INTO `organizations` VALUES (350, 4, 'OpenText', 'https://www.opentext.com/');
INSERT INTO `organizations` VALUES (351, 1, 'OpGen Inc', 'http://www.opgen.com/');
INSERT INTO `organizations` VALUES (352, 3, 'Organization for International Cooperation', 'http://www.oic-world-peace.org/');
INSERT INTO `organizations` VALUES (353, 3, 'Osher Lifelong Learning Institute at Johns Hopkins University', 'https://advanced.jhu.edu/academics/non-credit-programs/osher-lifelong-learning-institute/');
INSERT INTO `organizations` VALUES (354, 2, 'Paisano\'s', 'https://www.paisanospizza.com/');
INSERT INTO `organizations` VALUES (355, 3, 'Panda Programmer', 'https://www.pandaprogrammer.com/');
INSERT INTO `organizations` VALUES (356, 1, 'Paragon Bioservices', 'https://biologics.catalent.com/');
INSERT INTO `organizations` VALUES (357, 4, 'Parenteral Drug Association', 'https://www.pda.org/');
INSERT INTO `organizations` VALUES (358, 2, 'Pareto Law', 'https://www.paretolaw.com/');
INSERT INTO `organizations` VALUES (359, 1, 'Patient First', 'https://www.patientfirst.com/');
INSERT INTO `organizations` VALUES (360, 2, 'Pay Back Fans LLC.', 'https://www.linkedin.com/in/james-beckham-ba2257140');
INSERT INTO `organizations` VALUES (361, 2, 'Pepsi Beverages Company', 'https://www.pepsico.com/');
INSERT INTO `organizations` VALUES (362, 4, 'Perspecta', 'https://perspecta.com/');
INSERT INTO `organizations` VALUES (363, 2, 'Photofax. Inc', 'https://photofax.com/');
INSERT INTO `organizations` VALUES (364, 2, 'Picture The World', 'http://www.picturetheworldnow.org/');
INSERT INTO `organizations` VALUES (365, 2, 'Pierce Davis & Perritano LLP', 'https://www.piercedavis.com/');
INSERT INTO `organizations` VALUES (366, 1, 'Pilates Center of Rockville', 'https://www.pilatescenterofrockville.com/');
INSERT INTO `organizations` VALUES (367, 4, 'Pioneer Power Group', 'http://pioneerpwr.com/');
INSERT INTO `organizations` VALUES (368, 4, 'Planet Depos', 'https://planetdepos.com/');
INSERT INTO `organizations` VALUES (369, 4, 'Planned Systems International (PSI)', 'https://www.plan-sys.com/');
INSERT INTO `organizations` VALUES (370, 2, 'Politico', 'https://www.politico.com/');
INSERT INTO `organizations` VALUES (371, 2, 'Pop-up Patisserie', 'https://popuppatisserie.com/');
INSERT INTO `organizations` VALUES (372, 1, 'Potomac Pediatrics', 'https://potomacpediatrics.com/');
INSERT INTO `organizations` VALUES (373, 4, 'Precise Software Solutions', 'https://www.precise-soft.com/');
INSERT INTO `organizations` VALUES (374, 2, 'PrimeLending', 'https://www.primelending.com/');
INSERT INTO `organizations` VALUES (375, 1, 'Proud Moments ABA', 'https://www.proudmomentsaba.com/');
INSERT INTO `organizations` VALUES (376, 1, 'PSI Family Services', 'http://www.psifamilyofservices.com/');
INSERT INTO `organizations` VALUES (377, 3, 'Public Lands Alliance', 'https://www.publiclandsalliance.org/home');
INSERT INTO `organizations` VALUES (378, 4, 'Quest Software', 'https://www.quest.com/');
INSERT INTO `organizations` VALUES (379, 2, 'Quicken Loans', 'https://www.quickenloans.com/');
INSERT INTO `organizations` VALUES (380, 2, 'Quorum', 'https://www.quorum.us/');
INSERT INTO `organizations` VALUES (381, 2, 'Randstad', 'https://www.randstadusa.com/');
INSERT INTO `organizations` VALUES (382, 4, 'RBtec Inc.', 'https://www.rbtec.com/');
INSERT INTO `organizations` VALUES (383, 3, 'Real Food for Kids - Montgomery', 'https://www.realfoodforkidsmontgomery.org/');
INSERT INTO `organizations` VALUES (384, 2, 'Real Living Real Estate', 'https://www.realliving.com/');
INSERT INTO `organizations` VALUES (385, 1, 'Rebound Physical Therapy, LLC', 'http://reboundrockville.com/');
INSERT INTO `organizations` VALUES (386, 4, 'Refyn Data LLC', 'http://refyndata.com/');
INSERT INTO `organizations` VALUES (387, 2, 'Research Financial Strategies', 'https://www.rfsadvisors.com/');
INSERT INTO `organizations` VALUES (388, 3, 'Retouch International Ministries.', 'https://www.rimministries.org/');
INSERT INTO `organizations` VALUES (389, 3, 'Revature', 'https://revature.com/');
INSERT INTO `organizations` VALUES (390, 2, 'Revere Bank', 'https://www.reverebank.com/');
INSERT INTO `organizations` VALUES (391, 2, 'Ricciuti\'s Restauant', 'https://ricciutis.com/');
INSERT INTO `organizations` VALUES (392, 2, 'Right At Home', 'https://www.rightathome.net/');
INSERT INTO `organizations` VALUES (393, 1, 'Righttime Medical Care', 'https://www.myrighttime.com/');
INSERT INTO `organizations` VALUES (394, 1, 'Rising Tide Interactive', 'https://www.risingtideinteractive.com/');
INSERT INTO `organizations` VALUES (395, 2, 'Riverside Hotpot Cuisine', 'https://www.yelp.com/biz/riverside-hotpot-cuisine-gaithersburg');
INSERT INTO `organizations` VALUES (396, 2, 'RMA Worldwide Chauffeured Transportation', 'https://www.rmalimo.com/');
INSERT INTO `organizations` VALUES (397, 2, 'Rosenberg & Associates, LLC', 'https://rosenberg-assoc.com/');
INSERT INTO `organizations` VALUES (398, 2, 'Saggar & Rosenberg, PC', 'http://srpc-cpa.com/');
INSERT INTO `organizations` VALUES (399, 3, 'Salisbury University', 'https://www.salisbury.edu/');
INSERT INTO `organizations` VALUES (400, 2, 'Sanabria & Associates', 'https://www.slegal.com/');
INSERT INTO `organizations` VALUES (401, 4, 'Sanaria, Inc.', 'https://sanaria.com/');
INSERT INTO `organizations` VALUES (402, 2, 'Sandy Spring Bank', 'https://www.sandyspringbank.com/');
INSERT INTO `organizations` VALUES (403, 4, 'Savantage Solutions', 'https://www.savantage.net/');
INSERT INTO `organizations` VALUES (404, 3, 'SEEC', 'https://www.seeconline.org/');
INSERT INTO `organizations` VALUES (405, 3, 'SeekingSitters', 'https://www.seekingsitters.com/');
INSERT INTO `organizations` VALUES (406, 4, 'Semantic AI', 'https://www.semantic-ai.com/');
INSERT INTO `organizations` VALUES (407, 2, 'Semler Brossy Consulting Group', 'https://www.semlerbrossy.com/');
INSERT INTO `organizations` VALUES (408, 2, 'Seventy2 Capital Wealth Management', 'https://www.seventy2capital.com/');
INSERT INTO `organizations` VALUES (409, 3, 'Shared Support Maryland, Inc.', 'http://sharedsupportmd.org/');
INSERT INTO `organizations` VALUES (410, 2, 'Shulman Rogers', 'https://www.shulmanrogers.com/');
INSERT INTO `organizations` VALUES (411, 3, 'Sidwell Friends School', 'https://www.sidwell.edu/');
INSERT INTO `organizations` VALUES (412, 4, 'Siemans', 'https://new.siemens.com/global/en.html');
INSERT INTO `organizations` VALUES (413, 4, 'Sierra Club Maryland Chapter', 'https://www.sierraclub.org/maryland');
INSERT INTO `organizations` VALUES (414, 2, 'Silver Diner', 'https://www.silverdiner.com/');
INSERT INTO `organizations` VALUES (415, 2, 'Sinclair Broadcast Group', 'http://sbgi.net/');
INSERT INTO `organizations` VALUES (416, 2, 'Smokey Glen Farm Barbequers, Inc.', 'https://www.smokeyglenfarm.com/');
INSERT INTO `organizations` VALUES (417, 3, 'Snapology of Germantown', 'https://www.snapology.com/location/germantown');
INSERT INTO `organizations` VALUES (418, 2, 'Snyder Cohn, PC', 'https://www.snydercohn.com/');
INSERT INTO `organizations` VALUES (419, 3, 'Soccer Shots', 'https://www.soccershots.org/');
INSERT INTO `organizations` VALUES (420, 2, 'Sodexo', 'https://www.sodexo.com/home.html');
INSERT INTO `organizations` VALUES (421, 4, 'Software Productivity Strategists, Inc.', 'https://www.spsnet.com/');
INSERT INTO `organizations` VALUES (422, 4, 'Solutions in Aqua Services, Llc.', 'http://www.solutionsinaqua.com/');
INSERT INTO `organizations` VALUES (423, 2, 'Sonic Promos', 'https://www.sonicpromos.com/');
INSERT INTO `organizations` VALUES (424, 2, 'Spaces', 'https://www.spacesworks.com/');
INSERT INTO `organizations` VALUES (425, 1, 'Springfield Hospital Center', 'https://health.maryland.gov/springfield/Pages/home.aspx');
INSERT INTO `organizations` VALUES (426, 4, 'StarCompliance', 'https://www.starcompliance.com/');
INSERT INTO `organizations` VALUES (427, 3, 'State of Maryland', 'https://www.maryland.gov/Pages/default.aspx');
INSERT INTO `organizations` VALUES (428, 1, 'StemExpress', 'https://www.stemexpress.com/');
INSERT INTO `organizations` VALUES (429, 3, 'Strathmore Hall Foundation, Inc.', 'https://www.strathmore.org/');
INSERT INTO `organizations` VALUES (430, 3, 'Student Development & Success Center UMBC', 'https://www.umbc.edu/');
INSERT INTO `organizations` VALUES (431, 2, 'Sugo Sauces', 'https://www.facebook.com/Sugosauces/');
INSERT INTO `organizations` VALUES (432, 2, 'Syed Law Firm, PLLC (Washington, DC)', 'https://syedfirm.com/');
INSERT INTO `organizations` VALUES (433, 4, 'Symplicity Corporation', 'https://www.symplicity.com/');
INSERT INTO `organizations` VALUES (434, 3, 'T. Howard Foundation', 'https://www.t-howard.org/');
INSERT INTO `organizations` VALUES (435, 2, 'Tag Team Kitchen', 'https://tagteamkitchen.com/');
INSERT INTO `organizations` VALUES (436, 2, 'TapSnap DC', 'https://www.tapsnap.net/ms/tapsnap-dc-photo-booth-rentals');
INSERT INTO `organizations` VALUES (437, 2, 'Target', 'https://www.target.com/');
INSERT INTO `organizations` VALUES (438, 3, 'Target Community & Educational Services', 'http://www.targetcommunity.org/');
INSERT INTO `organizations` VALUES (439, 4, 'Tech Data Corporation', 'https://www.techdata.com/');
INSERT INTO `organizations` VALUES (440, 4, 'TechnoMile', 'https://technomile.com/');
INSERT INTO `organizations` VALUES (441, 4, 'Techouts INC.', 'https://techouts.com/');
INSERT INTO `organizations` VALUES (442, 2, 'Tennis Central Corp', 'https://www.tenniscentral.us/');
INSERT INTO `organizations` VALUES (443, 4, 'Tessco', 'https://www.tessco.com/');
INSERT INTO `organizations` VALUES (444, 4, 'Tetracore Inc.', 'https://www.tetracore.com/');
INSERT INTO `organizations` VALUES (445, 3, 'The Adventure Park at Sandy Spring', 'https://sandyspringadventurepark.org/');
INSERT INTO `organizations` VALUES (446, 3, 'The Borgen Project', 'https://borgenproject.org/');
INSERT INTO `organizations` VALUES (447, 4, 'The CBMC Group', 'http://www.thecbmcgroup.com/');
INSERT INTO `organizations` VALUES (448, 1, 'The Chesapeake Center for ADHD, Learning and Behavioral Health', 'https://chesapeakeadd.com/');
INSERT INTO `organizations` VALUES (449, 4, 'The Compost Crew', 'https://compostcrew.com/');
INSERT INTO `organizations` VALUES (450, 3, 'The Foundation Schools', 'https://www.foundationschools.org/');
INSERT INTO `organizations` VALUES (451, 3, 'The Franklin Montessori Schools', 'https://www.franklinmontessori.com/');
INSERT INTO `organizations` VALUES (452, 2, 'The Knot Worldwide', 'https://www.theknotww.com/');
INSERT INTO `organizations` VALUES (453, 3, 'The Lourie Center', 'https://www.louriecenter.org/LC/');
INSERT INTO `organizations` VALUES (454, 3, 'The Maryland Multicultural Youth Center', 'https://serviceyear.org/mmycac/');
INSERT INTO `organizations` VALUES (455, 3, 'The MITRE Corporation', 'https://www.mitre.org/');
INSERT INTO `organizations` VALUES (456, 4, 'The Premier Group', 'https://thepremiergroupus.com/');
INSERT INTO `organizations` VALUES (457, 4, 'The Walker Group', 'https://www.thewalkergroup.com/');
INSERT INTO `organizations` VALUES (458, 2, 'The WiseWe Company', 'https://www.thewisewecompany.com/intoduction');
INSERT INTO `organizations` VALUES (459, 1, 'Therapeutic & Learning Centers, P-LLC', 'http://www.susandrich.com/index.html');
INSERT INTO `organizations` VALUES (460, 4, 'Therrien Waddell', 'https://www.therrienwaddell.com/');
INSERT INTO `organizations` VALUES (461, 4, 'Tidewater, Inc.', 'http://www.tideh2o.net/contact-us/');
INSERT INTO `organizations` VALUES (462, 2, 'Torri\'s Legal Services', 'https://www.torrilegalservices.com/');
INSERT INTO `organizations` VALUES (463, 2, 'Total Wine & More', 'https://www.totalwine.com/');
INSERT INTO `organizations` VALUES (464, 3, 'Towson University', 'https://www.towson.edu/');
INSERT INTO `organizations` VALUES (465, 2, 'Transamerica', 'https://www.transamerica.com/individual/');
INSERT INTO `organizations` VALUES (466, 3, 'Treatment and Learning Centers', 'https://www.ttlc.org/');
INSERT INTO `organizations` VALUES (467, 4, 'Trinity Technology Partners, Inc.', 'http://www.trinitytp.com/');
INSERT INTO `organizations` VALUES (468, 2, 'Tusculum Farm', 'https://www.tusculumfarm.com/');
INSERT INTO `organizations` VALUES (469, 3, 'U.S. Census Bureau', 'https://www.census.gov/');
INSERT INTO `organizations` VALUES (470, 1, 'U.S. Pharmacopeia', 'https://www.usp.org/');
INSERT INTO `organizations` VALUES (471, 4, 'Ultranauts Inc.', 'http://ultranauts.co/');
INSERT INTO `organizations` VALUES (472, 2, 'Union of Concerned Scientists', 'https://www.ucsusa.org/');
INSERT INTO `organizations` VALUES (473, 4, 'United Therapeutics', 'https://www.unither.com/');
INSERT INTO `organizations` VALUES (474, 3, 'University of Maryland Eastern Shore', 'https://www.umes.edu/home/');
INSERT INTO `organizations` VALUES (475, 2, 'Urban One', 'https://urban1.com/');
INSERT INTO `organizations` VALUES (476, 3, 'Urban Teachers', 'https://urbanteachers.org/');
INSERT INTO `organizations` VALUES (477, 3, 'US Election Assistance Commission (EAC)', 'https://www.eac.gov/');
INSERT INTO `organizations` VALUES (478, 4, 'USG Office of Information Technology', 'https://shadygrove.umd.edu/campus-resources/office-of-information-technology');
INSERT INTO `organizations` VALUES (479, 2, 'USTelecom', 'https://www.ustelecom.org/');
INSERT INTO `organizations` VALUES (480, 2, 'Vendor Centric', 'https://vendorcentric.com/');
INSERT INTO `organizations` VALUES (481, 4, 'Verizon Media', 'https://www.verizonmedia.com/');
INSERT INTO `organizations` VALUES (482, 4, 'VIAVI Solutions', 'https://www.viavisolutions.com/en-us');
INSERT INTO `organizations` VALUES (483, 4, 'VitusVet', 'https://vitusvet.com/');
INSERT INTO `organizations` VALUES (484, 2, 'Vivabox Solutions', 'https://vivaboxsolutions.com/');
INSERT INTO `organizations` VALUES (485, 4, 'Vivint Smart Home', 'https://www.vivint.com/');
INSERT INTO `organizations` VALUES (486, 2, 'Vysnova Partners, Inc.', 'https://www.vysnova.com/');
INSERT INTO `organizations` VALUES (487, 2, 'Walsh Construction', 'http://www.walshgroup.com/');
INSERT INTO `organizations` VALUES (488, 3, 'Walt Disney Company', 'https://thewaltdisneycompany.com/');
INSERT INTO `organizations` VALUES (489, 3, 'Washington Cathay Future Center', 'http://www.cathayfutureus.com/');
INSERT INTO `organizations` VALUES (490, 3, 'Washington Nationals', 'https://www.mlb.com/nationals');
INSERT INTO `organizations` VALUES (491, 3, 'Washington Talent', 'https://washingtontalent.com/');
INSERT INTO `organizations` VALUES (492, 2, 'WeddingWire Inc', 'https://www.weddingwire.com/');
INSERT INTO `organizations` VALUES (493, 2, 'WGL Holdings Inc', 'https://wglholdingsinc.gcs-web.com/investor-relations');
INSERT INTO `organizations` VALUES (494, 3, 'White House Council on Environmental Quality', 'https://www.whitehouse.gov/ceq/');
INSERT INTO `organizations` VALUES (495, 2, 'Wiley Rein LLP', 'https://www.wiley.law/');
INSERT INTO `organizations` VALUES (496, 4, 'Wipro Technologies', 'https://www.wipro.com/en-US/');
INSERT INTO `organizations` VALUES (497, 2, 'Wiss, Janney, Elstner Associates, Inc.', 'https://www.wje.com/');
INSERT INTO `organizations` VALUES (498, 3, 'Within Our Reach', 'https://www.alliance1.org/web/within-our-reach/about-within-our-reach.aspx');
INSERT INTO `organizations` VALUES (499, 2, 'Woodbourne Solutions', 'https://www.woodbournesolutions.com/');
INSERT INTO `organizations` VALUES (500, 2, 'Woodside Temporaries, Inc.', 'http://www.woodsideemployment.com/');
INSERT INTO `organizations` VALUES (501, 2, 'WTS International Inc', 'https://www.wtsinternational.com/');
INSERT INTO `organizations` VALUES (502, 2, 'XML Financial Group', 'https://www.xmlfg.com/');

-- ----------------------------
-- View structure for company_record
-- ----------------------------
DROP VIEW IF EXISTS `company_record`;
CREATE ALGORITHM = UNDEFINED SQL SECURITY DEFINER VIEW `company_record` AS SELECT CONCAT(e.first_name, ' ', e.last_name) AS employee_name, i.industry_name, o.organization_name, o.website
FROM organizations o JOIN org_emp oe ON o.organization_id = oe.organization_id
JOIN employees e ON oe.employee_id = e.employee_id
JOIN industries i ON o.industry_id = i.industry_id
UNION 
SELECT "Needs to be added", i.industry_name, o.organization_name, o.website
FROM organizations o LEFT JOIN org_emp oe ON o.organization_id = oe.organization_id
LEFT JOIN employees e ON oe.employee_id = e.employee_id
LEFT JOIN industries i ON o.industry_id = i.industry_id
WHERE e.first_name IS NULL AND e.last_name IS NULL ;

-- ----------------------------
-- View structure for deduction_outstanding
-- ----------------------------
DROP VIEW IF EXISTS `deduction_outstanding`;
CREATE ALGORITHM = UNDEFINED SQL SECURITY DEFINER VIEW `deduction_outstanding` AS SELECT employee_id, CONCAT(last_name, ", ", first_name) AS employee_name, organization_name, ROUND(AVG(gross_pay),2) AS average_gross_pay, ROUND(AVG(net_pay), 2) AS average_net_pay, ROUND(AVG(gross_pay - net_pay), 2) AS average_deduction 
FROM employees JOIN emp_records USING(employee_id)
JOIN org_emp USING(employee_id)
JOIN organizations USING(organization_id)
WHERE gross_pay - net_pay < 0
GROUP BY employee_id, organization_id 
HAVING AVG(net_pay) > 90000 AND SUM(gross_pay) > 100000 ;

-- ----------------------------
-- View structure for employee_salary
-- ----------------------------
DROP VIEW IF EXISTS `employee_salary`;
CREATE ALGORITHM = UNDEFINED SQL SECURITY DEFINER VIEW `employee_salary` AS SELECT oe.employee_id, CONCAT(e.first_name, ', ', e.last_name) AS full_name, i.industry_name, d.department_name, CAST(er.net_pay AS SIGNED) AS net_pay, CONVERT(er.gross_pay, SIGNED) AS gross_pay, ROUND(SUM(er.gross_pay - er.net_pay)) AS deduction
FROM employees e JOIN org_emp oe ON e.employee_id = oe.employee_id 
JOIN emp_records er ON e.employee_id = er.employee_id 
JOIN departments d ON oe.department_id = d.department_id 
JOIN industries i ON d.industry_id = i.industry_id 
GROUP BY oe.employee_id, i.industry_name, d.department_name, net_pay, gross_pay ;

-- ----------------------------
-- View structure for organization_total_paid
-- ----------------------------
DROP VIEW IF EXISTS `organization_total_paid`;
CREATE ALGORITHM = UNDEFINED SQL SECURITY DEFINER VIEW `organization_total_paid` AS SELECT organization_name, MAX(x.total_paid) AS max_total_paid 
FROM organizations o JOIN org_emp e USING(organization_id)
JOIN 
(SELECT organization_id, ROUND(SUM(net_pay),2) AS total_paid
FROM organizations JOIN org_emp USING(organization_id) 
JOIN emp_records USING(employee_id)
GROUP BY organization_id) AS x ON o.organization_id = x.organization_id
GROUP BY organization_name WITH ROLLUP ;

-- ----------------------------
-- View structure for rockville_employees
-- ----------------------------
DROP VIEW IF EXISTS `rockville_employees`;
CREATE ALGORITHM = UNDEFINED SQL SECURITY DEFINER VIEW `rockville_employees` AS SELECT first_name, last_name, department_name, gross_pay - net_pay AS deduction, phone, zip_code
FROM employees JOIN org_emp USING(employee_id)
JOIN emp_records USING(employee_id)
JOIN departments USING(department_id) 
WHERE zip_code = 20850
AND gross_pay - net_pay < 
(SELECT SUM(gross_pay - net_pay) FROM emp_records WHERE gross_pay - net_pay > 0) ;

-- ----------------------------
-- View structure for state_salary
-- ----------------------------
DROP VIEW IF EXISTS `state_salary`;
CREATE ALGORITHM = UNDEFINED SQL SECURITY DEFINER VIEW `state_salary` AS SELECT state, city, industry_name, ROUND(MAX(total_gross_pay),2) AS max_gross_pay
FROM 
(SELECT e.state, e.city, i.industry_name, SUM(gross_pay) AS total_gross_pay 
FROM employees e JOIN emp_records er ON e.employee_id = er.employee_id
JOIN org_emp oe ON e.employee_id = oe.employee_id
JOIN departments d ON oe.department_id = d.department_id
JOIN industries i ON d.industry_id = i.industry_id
GROUP BY e.state, e.city, i.industry_id
) y 
GROUP BY state, city, industry_name ;

SET FOREIGN_KEY_CHECKS = 1;
