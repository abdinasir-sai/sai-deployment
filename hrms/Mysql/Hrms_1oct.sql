

CREATE TABLE PLANNED_ORG_CHART (     ID INT NOT NULL AUTO_INCREMENT,     DELETED TINYINT(1) NOT NULL DEFAULT '0',     NAME VARCHAR(255) DEFAULT NULL,     DEPARTMENT_ID INT DEFAULT NULL,     PROCESS_INSTANCE_ID varchar(100) DEFAULT NULL,     WORKFLOW_STAGE varchar(100) DEFAULT NULL,     CREATED_TIME DATETIME(6) DEFAULT NULL,     MODIFIED_TIME DATETIME(6) DEFAULT NULL,     CREATOR INT DEFAULT NULL,     LAST_MODIFIER INT DEFAULT NULL,     PRIMARY KEY (ID),     KEY DEPARTMENT_ID (DEPARTMENT_ID),     KEY FK4jyd41gcmvmdk740lcwmvomas (CREATOR),     KEY FK445sht8j3up6irlr1sdcsnyx3 (LAST_MODIFIER),     CONSTRAINT plannedorgchart_ibfk_1 FOREIGN KEY (DEPARTMENT_ID) REFERENCES DEPARTMENT (ID),     CONSTRAINT plannedorgchart_ibfk_2 FOREIGN KEY (LAST_MODIFIER) REFERENCES User (ID),     CONSTRAINT plannedorgchart_ibfk_3 FOREIGN KEY (CREATOR) REFERENCES User (ID) ); 

 

CREATE TABLE ORG_CHART_DESIGNATION ( `ID` INT NOT NULL AUTO_INCREMENT, `DELETED` TINYINT(1) NOT NULL DEFAULT '0', `ORGCHART_ID` INT NOT NULL, `DESIGNATION_ID` INT DEFAULT NULL, `DEPARTMENT_ID` INT NOT NULL, `NAME` VARCHAR(255) DEFAULT NULL, `PARENT_DESIGNATION` INT DEFAULT NULL, `JOB_GRADE` INT DEFAULT NULL, `JOB_DESCRIPTION` LONGTEXT, `JOB_LEVEL` VARCHAR(20) DEFAULT NULL, `CORE_CAPABILITIES` LONGTEXT, `EXPERIENCE_AND_EDUCATION` LONGTEXT, `RESPONSIBILITIES` LONGTEXT, `KPI` LONGTEXT, `PROCESS_INSTANCE_ID` VARCHAR(100) DEFAULT NULL, `WORKFLOW_STAGE` VARCHAR(100) DEFAULT NULL, `CREATED_TIME` DATETIME(6) DEFAULT NULL, `MODIFIED_TIME` DATETIME(6) DEFAULT NULL, `CREATOR` INT DEFAULT NULL, `LAST_MODIFIER` INT DEFAULT NULL, PRIMARY KEY (`ID`), KEY `PARENT_DESIGNATION` (`PARENT_DESIGNATION`), KEY `ORGCHART_ID` (`ORGCHART_ID`), KEY `DEPARTMENT_ID` (`DEPARTMENT_ID`), KEY `DESIGNATION_ID` (`DESIGNATION_ID`), KEY `FK_CREATOR` (`CREATOR`), KEY `FK_LAST_MODIFIER` (`LAST_MODIFIER`), CONSTRAINT `fk_parent_designation` FOREIGN KEY (`PARENT_DESIGNATION`) REFERENCES `ORG_CHART_DESIGNATION` (`ID`), CONSTRAINT `fk_department_id` FOREIGN KEY (`DEPARTMENT_ID`) REFERENCES `DEPARTMENT` (`ID`), CONSTRAINT `fk_orgchart_id` FOREIGN KEY (`ORGCHART_ID`) REFERENCES `PLANNED_ORG_CHART` (`ID`), CONSTRAINT `fk_designation_id` FOREIGN KEY (`DESIGNATION_ID`) REFERENCES `DESIGNATION` (`ID`), CONSTRAINT `fk_last_modifier` FOREIGN KEY (`LAST_MODIFIER`) REFERENCES `User` (`ID`), CONSTRAINT `fk_creator` FOREIGN KEY (`CREATOR`) REFERENCES `User` (`ID`) ); 

 

 

 

CREATE TABLE HR_BENEFITS (   `ID` int NOT NULL AUTO_INCREMENT,   `DELETED` tinyint(1) NOT NULL DEFAULT '0',   `EMPLOYEE_ID` int NOT NULL,   `BENEFIT_TYPE` enum('Health Club Benefit', 'Educational Benefit', 'Child Education Benefit', 'New Hire Benefit') DEFAULT 'Health Club Benefit',   `HEALTH_START_DATE` datetime DEFAULT NULL,   `HEALTH_END_DATE` datetime DEFAULT NULL,   `AMOUNT` double DEFAULT NULL,   `EDUCATION_START_DATE` datetime DEFAULT NULL,   `EDUCATION_END_DATE` datetime DEFAULT NULL,   `COUNTRY_OF_COURSE` int DEFAULT NULL,   `SAUDI_CITY` varchar(255) DEFAULT NULL,   `NEW_HIRE_DATE_OF_CLAIM` datetime DEFAULT NULL,   `EMPLOYEE_GRADE` int DEFAULT NULL,   `NUMBER_OF_CHILDREN` enum('1', '2', '3') DEFAULT '1',   `SCHOOL_YEAR` datetime DEFAULT NULL,   `ATTACHMENT` varchar(255) DEFAULT NULL,   `DESCRIPTION` longtext DEFAULT NULL,   `TEXT` varchar(255) DEFAULT NULL,   `OUTPUT_STRING` varchar(255) DEFAULT NULL,   `PROCESS_INSTANCE_ID` varchar(100) DEFAULT NULL,   `WORKFLOW_STAGE` varchar(100) DEFAULT NULL,   `CREATED_TIME` datetime(6) DEFAULT NULL,   `MODIFIED_TIME` datetime(6) DEFAULT NULL,   `CREATOR` int DEFAULT NULL,   `LAST_MODIFIER` int DEFAULT NULL,   PRIMARY KEY (`ID`),   KEY `EMPLOYEE_ID` (`EMPLOYEE_ID`),   KEY `FK3jyd41gcmaAdk740lcwmvomas` (`CREATOR`),   KEY `FK555sht8j3DW6irlr1sdcsnyx3` (`LAST_MODIFIER`),   CONSTRAINT `hrbenefit_ibfk_1` FOREIGN KEY (`EMPLOYEE_ID`) REFERENCES `EMPLOYEE` (`ID`),   CONSTRAINT `hrbenefit_ibfk_2` FOREIGN KEY (`LAST_MODIFIER`) REFERENCES `User` (`ID`),   CONSTRAINT `hrbenefit_ibfk_3` FOREIGN KEY (`CREATOR`) REFERENCES `User` (`ID`) ); 

 

alter table HR_BENEFITS add column `GL_STATUS` enum('PUSHED', 'NOT_PUSHED') Default NULL; 

 

Alter table DESIGNATION add column `PROCESS_INSTANCE_ID` varchar(100) DEFAULT NULL; 
 Alter table DESIGNATION add column `WORKFLOW_STAGE` varchar(100) DEFAULT NULL; 

ALTER TABLE HR_BENEFITS ALTER COLUMN `GL_STATUS` SET DEFAULT 'NOT_PUSHED'; 

 

Alter table ORG_CHART_DESIGNATION add column `START_COMPENSATION_RANGE` int DEFAULT NULL; 
 Alter table ORG_CHART_DESIGNATION add column `END_COMPENSATION_RANGE` int DEFAULT NULL; 

Alter table APPLICANT modify column `EXPERIENCE_IN_YEARS` double DEFAULT NULL; 

 

Alter table EMPLOYEE add column `ARABIC_FULL_NAME` varchar(100) DEFAULT NULL; 

Alter table EMPLOYEE_AUD add column `ARABIC_FULL_NAME` varchar(100) DEFAULT NULL; 

UPDATE EMPLOYEE SET ARABIC_FULL_NAME = CONCAT(ARABIC_FIRST_NAME, ' ', ARABIC_LAST_NAME) WHERE ARABIC_FIRST_NAME IS NOT NULL  AND ARABIC_LAST_NAME IS NOT NULL; 

 

ALTER TABLE `HR_BENEFITS` ADD CONSTRAINT `FK_hrbenefits_country` FOREIGN KEY (`COUNTRY_OF_COURSE`) REFERENCES `COUNTRY` (`ID`); 

ALTER TABLE INTEGRATION_LOG CHANGE COLUMN `REQUEST_ID` `PROCESS_ID` DOUBLE DEFAULT NULL, CHANGE COLUMN `TIME_STAMP` `REQUEST_ID` VARCHAR(50) DEFAULT NULL; 

 

Alter table JOB_OPENING add column `RESPONSIBILITIES` longtext;  

Alter table JOB_OPENING add column `KPI` longtext; 

 

 ALTER TABLE `EMPLOYEE_CHILDREN` DROP FOREIGN KEY `employeechildren_ibwuwfk_1`; 

ALTER TABLE `EMPLOYEE_CHILDREN` DROP COLUMN `CHILD_EDUCATION_BENEFIT_ID`; 

ALTER TABLE `EMPLOYEE_CHILDREN` ADD COLUMN `HR_BENEFITS_ID` INT; 

 ALTER TABLE `EMPLOYEE_CHILDREN` ADD CONSTRAINT `fk_employeechildren_hrbenefits` FOREIGN KEY (`HR_BENEFITS_ID`) REFERENCES `HR_BENEFITS` (`ID`); 

ALTER TABLE `JOB_APPLICATION_CONFIGURATION_SCORE` ADD COLUMN `REASON` varchar(1000) DEFAULT NULL; 
