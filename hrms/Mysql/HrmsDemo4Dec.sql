ALTER TABLE LEAVES ADD COLUMN IS_DEDUCTED BOOLEAN DEFAULT FALSE COMMENT 'Checking Amount Deducted or Not '; 

ALTER TABLE LEAVES ADD COLUMN REMARK LONGTEXT COMMENT'It stores the remark' 

ALTER TABLE LEAVES_AUD ADD COLUMN REMARK LONGTEXT COMMENT'It stores the remark'; 

ALTER TABLE LEAVES_AUD ADD COLUMN IS_DEDUCTED BOOLEAN DEFAULT FALSE COMMENT 'Checking Amount Deducted or Not '; 

ALTER TABLE EMPLOYEE_NATIONAL_IDENTIFICATION ADD COLUMN COUNTRY_OF_ISSUE VARCHAR(255) DEFAULT NULL COMMENT'It stores country of issue'; 

 
 ALTER TABLE APPLICANT_NATIONAL_IDENTIFICATION ADD COLUMN COUNTRY_OF_ISSUE VARCHAR(255) DEFAULT NULL COMMENT'It stores country of issue'; 

ALTER TABLE APPLICANT_EXPERIENCE ADD COLUMN REASON_FOR_LEAVE LONGTEXT DEFAULT NULL, ADD COLUMN EMPLOYMENT_STATUS ENUM('full-time', 'part-time', 'self-employed', 'contract') DEFAULT NULL, ADD COLUMN EMP_ID_PREVIOUS_COMPANY VARCHAR(255) DEFAULT NULL, ADD COLUMN ADDRESS LONGTEXT DEFAULT NULL; 
 
 ALTER TABLE EMPLOYEE_WORK_EXPERIENCE ADD COLUMN REASON_FOR_LEAVE LONGTEXT DEFAULT NULL, ADD COLUMN EMPLOYMENT_STATUS ENUM('full-time', 'part-time', 'self-employed', 'contract') DEFAULT NULL, ADD COLUMN EMP_ID_PREVIOUS_COMPANY VARCHAR(255) DEFAULT NULL, ADD COLUMN ADDRESS LONGTEXT DEFAULT NULL; 

ALTER TABLE EMPLOYEE_DEPENDENT_DETAILS  ADD COLUMN GENDER  ENUM('Male', 'Female', 'Other') DEFAULT NULL; 

  

ALTER TABLE APPLICANT_EDUCATION ADD COLUMN STUDENT_ID VARCHAR(255) DEFAULT NULL COMMENT'to store the student id', ADD COLUMN CITY VARCHAR(255) DEFAULT NULL COMMENT'to store the city'; 
 

ALTER TABLE INTERVIEW ADD COLUMN INTERVIEWER_RECRUITER_COUNT INT DEFAULT NULL, ADD COLUMN INTERVIEWER_MANAGER_COUNT INT DEFAULT NULL, ADD COLUMN INTERVIEWER_ACCEPT ENUM('Accept', 'Reject', 'No response') DEFAULT 'No response', ADD COLUMN INTERVIEWER_MANAGER_ACCEPT ENUM('Accept', 'Reject', 'No response') DEFAULT 'No response', ADD COLUMN INTERVIEWER_RECRUITER_ACCEPT ENUM('Accept', 'Reject', 'No response') DEFAULT 'No response'; 

CREATE TABLE `APPLICANT_DEPENDENT_DETAILS` (`ID` int NOT NULL AUTO_INCREMENT,   `DELETED` tinyint(1) NOT NULL DEFAULT '0',  `FIRST_NAME` varchar(100) DEFAULT NULL,   `MIDDLE_NAME` varchar(100) DEFAULT NULL,   `LAST_NAME` varchar(100) DEFAULT NULL,   `FULL_NAME` varchar(200) DEFAULT NULL,   `CONTACT_NUMBER` varchar(100) DEFAULT NULL,   `DATE_OF_BIRTH` datetime DEFAULT NULL,   `DEPENDENT_IDENTIFICATION` varchar(255) DEFAULT NULL,   `RELATIONSHIP` enum('Mother','Father','Brother','Sister','Wife','Child','Husband') DEFAULT NULL,   `APPLICANT_FK` int DEFAULT NULL,   `CREATED_TIME` datetime(6) DEFAULT NULL,   `MODIFIED_TIME` datetime(6) DEFAULT NULL,   `CREATOR` int DEFAULT NULL,   `LAST_MODIFIER` int DEFAULT NULL,   `GENDER` enum('Male','Female','Other') DEFAULT NULL,   PRIMARY KEY (`ID`),   KEY `APPLICANT_FK` (`APPLICANT_FK`),   KEY `FK2pqrwj6dip8i00m271j5yugni` (`CREATOR`),   KEY `FKhvylqjobhlmubhbm99woq26ygm` (`LAST_MODIFIER`),   CONSTRAINT `employee_dependent_details_ibfk_11` FOREIGN KEY (`APPLICANT_FK`) REFERENCES `APPLICANT` (`ID`),CONSTRAINT `FK2prwkj6dip8i00m271j5yugni` FOREIGN KEY (`CREATOR`) REFERENCES `User` (`ID`),CONSTRAINT `FKhvylkjobhlmubhbm99woq26ygm` FOREIGN KEY (`LAST_MODIFIER`) REFERENCES `User` (`ID`) ); 
