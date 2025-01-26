



create table BUSINESS_EXPENSE(   ID int auto_increment NOT NULL,   DELETED tinyint(1) NOT NULL DEFAULT 0,   CLAIM_DATE datetime DEFAULT NULL,   CLAIM_AMOUNT double DEFAULT NULL,   DESCRIPTION longtext DEFAULT NULL,   ATTACHMENT varchar(255) DEFAULT NULL,   EMPLOYEE_ID int  NOT NULL,   PROCESS_INSTANCE_ID varchar(100) DEFAULT NULL,   WORKFLOW_STAGE varchar(100) DEFAULT NULL,   CREATED_TIME datetime(6) DEFAULT NULL,   MODIFIED_TIME datetime(6) DEFAULT NULL,   CREATOR int DEFAULT NULL,   LAST_MODIFIER int DEFAULT NULL,   PRIMARY KEY (`ID`),   KEY `EMPLOYEE_ID` (`EMPLOYEE_ID`),   KEY `FKruint4ywp525bi3f53jifd5qjamwq1` (`CREATOR`),   KEY `FKlkqj4fkf32oyx6srfdihcvdfdfqw2` (`LAST_MODIFIER`),   CONSTRAINT ` businessexpense_ibfk1` FOREIGN KEY (`EMPLOYEE_ID`) REFERENCES `EMPLOYEE` (`ID`),   CONSTRAINT `FKlkqj4fkf32oyx6srfdihcvdfdfqw2` FOREIGN KEY (`LAST_MODIFIER`) REFERENCES `User` (`ID`),   CONSTRAINT `FKruint4ywp525bi3f53jifd5qjamwq1` FOREIGN KEY (`CREATOR`) REFERENCES `User` (`ID`) ); 

 

 

 

 

INSERT INTO RESOURCE_INFO (     CREATOR_FK,     CREATOR_NAME,     CREATED_TIME,     MODIFIER_FK,     MODIFIER_NAME,     MODIFIED_TIME,     NAME,     DISPLAY_NAME,     RESOURCE_JSON,     DESCRIPTION,     CONTEXT_JSON,     ENTITY_TYPE,     SERVICE_PATH,     CLASS_NAME,     METHOD_NAME,     CONTEXT_ID_SETTER,     CONTEXT_INFO,     REST_NAME,     URL_CONTEXT_NAME,     ENTITY_RELATION,     HISTORY_IDENTIFIER,     UNIQUE_IDENTIFIER,     METHOD_IDENTIFIER,     ENTITY_ID_REQUIRED,     APPLICATION_FK,   VISIBLE,     PARENT_RESOURCE,     SAMPLE_JSON,     type,     ADDITIONAL_MODIFIER,     TABLE_NAME,     COMMONS_ENTITY_KEY,     COLUMN_DATA_JSON ) VALUES (     137919,     'Patil',     now(),     137919,     'Patil',      now(),     'BusinessExpense',     'BusinessExpense',     '{"display":"form","components":[{"key":"id","type":"number","input":true,"label":"ID","validate":{"required":false},"inputType":"number","tableView":true,"description":"ID","placeholder":"ID","defaultValue":null},{"key":"name","type":"textfield","input":true,"label":"name","validate":{"required":true},"inputType":"textfield","tableView":true,"columnName":"TASK_NAME","description":"name","placeholder":"name","defaultValue":null}]}',     NULL,     '{"BUSINESSEXPENSE": "id"}',     'BUSINESSEXPENSE',     'http://hrms-service/hrms/rest/VBHelper',     'BusinessExpense',     NULL,     NULL,     'http://hrms-service/hrms/rest/BusinessExpense/search?filter=id==$BUSINESSEXPENSE&offset=0&size=25',     'BusinessExpense',     'HRMS',     'OneToMany',     NULL,     '{"key": "id", "columnName": "ID"}',     '{"FIND": "findById", "CREATE": "create", "REMOVE": "deleteById", "UPDATE": "update", "CLASSTYPE": "INTERFACE", "CLASSLEVEL": "CONTROLLER", "CLASS_NAME": "BusinessExpenseController", "PACKAGE_PATH": "com.enttribe.hrms.controller"}',     0x00,     216, 0x01, '{"mapping": true, "mappingKey": "employee", "resourceName": "Employee", "parentMappingKey": "id"}',     NULL,     NULL,NULL,     'BUSINESS_EXPENSE',  '{"EMPLOYEE": "EMPLOYEE_ID in (select ID from EMPLOYEE  where ID= ?)"}' ,     NULL ); 

 

alter table CHILD_EDUCATION_BENEFIT add column OUTPUT_STRING varchar(200) DEFAULT NULL ; 

alter table EDUCATIONAL_BENEFIT add column OUTPUT_STRING varchar(200) DEFAULT NULL ; 

alter table HEALTH_CLUB_BENEFIT add column OUTPUT_STRING varchar(200) DEFAULT NULL ; 

alter table NEW_HIRE_BENEFIT add column OUTPUT_STRING varchar(200) DEFAULT NULL ; 

 

INSERT INTO RESOURCE_INFO (     CREATOR_FK,     CREATOR_NAME,     CREATED_TIME,     MODIFIER_FK,     MODIFIER_NAME,     MODIFIED_TIME,     NAME,     DISPLAY_NAME,     RESOURCE_JSON,     DESCRIPTION,     CONTEXT_JSON,     ENTITY_TYPE,     SERVICE_PATH,     CLASS_NAME,     METHOD_NAME,     CONTEXT_ID_SETTER,     CONTEXT_INFO,     REST_NAME,     URL_CONTEXT_NAME,     ENTITY_RELATION,     HISTORY_IDENTIFIER,     UNIQUE_IDENTIFIER,     METHOD_IDENTIFIER,     ENTITY_ID_REQUIRED,     APPLICATION_FK,   VISIBLE,     PARENT_RESOURCE,     SAMPLE_JSON,     type,     ADDITIONAL_MODIFIER,     TABLE_NAME,     COMMONS_ENTITY_KEY,     COLUMN_DATA_JSON ) VALUES (     137919,     'Patil',     now(),     137919,     'Patil',      now(),     'EmployeeChildren',     'EmployeeChildren',     '{"display":"form","components":[{"key":"id","type":"number","input":true,"label":"ID","validate":{"required":false},"inputType":"number","tableView":true,"description":"ID","placeholder":"ID","defaultValue":null},{"key":"name","type":"textfield","input":true,"label":"name","validate":{"required":true},"inputType":"textfield","tableView":true,"columnName":"TASK_NAME","description":"name","placeholder":"name","defaultValue":null}]}',     NULL,     '{"EMPLOYEECHILDREN": "id"}',     'EMPLOYEECHILDREN',     'http://hrms-service/hrms/rest/VBHelper',     'EmployeeChildren',     NULL,     NULL,     'http://hrms-service/hrms/rest/EmployeeChildren/search?filter=id==$EMPLOYEECHILDREN&offset=0&size=25',     'EmployeeChildren',     'HRMS',     'OneToMany',     NULL,     '{"key": "id", "columnName": "ID"}',     '{"FIND": "findById", "CREATE": "create", "REMOVE": "deleteById", "UPDATE": "update", "CLASSTYPE": "INTERFACE", "CLASSLEVEL": "CONTROLLER", "CLASS_NAME": "EmployeeChildrenController", "PACKAGE_PATH": "com.enttribe.hrms.controller"}',     0x00,     216, 0x01, '{"mapping": true, "mappingKey": "employee", "resourceName": "Employee", "parentMappingKey": "id"}',     NULL,     NULL,NULL,     'EMPLOYEE_CHILDREN',  '{"EMPLOYEE": "EMPLOYEE_ID in (select ID from EMPLOYEE  where ID= ?)"}' ,     NULL ); 

 

INSERT INTO RESOURCE_INFO (     CREATOR_FK,     CREATOR_NAME,     CREATED_TIME,     MODIFIER_FK,     MODIFIER_NAME,     MODIFIED_TIME,     NAME,     DISPLAY_NAME,     RESOURCE_JSON,     DESCRIPTION,     CONTEXT_JSON,     ENTITY_TYPE,     SERVICE_PATH,     CLASS_NAME,     METHOD_NAME,     CONTEXT_ID_SETTER,     CONTEXT_INFO,     REST_NAME,     URL_CONTEXT_NAME,     ENTITY_RELATION,     HISTORY_IDENTIFIER,     UNIQUE_IDENTIFIER,     METHOD_IDENTIFIER,     ENTITY_ID_REQUIRED,     APPLICATION_FK,   VISIBLE,     PARENT_RESOURCE,     SAMPLE_JSON,     type,     ADDITIONAL_MODIFIER,     TABLE_NAME,     COMMONS_ENTITY_KEY,     COLUMN_DATA_JSON ) VALUES (     137919,     'Patil',     now(),     137919,     'Patil',      now(),     'WeightageConfiguration',     'WeightageConfiguration',     '{"display":"form","components":[{"key":"id","type":"number","input":true,"label":"ID","validate":{"required":false},"inputType":"number","tableView":true,"description":"ID","placeholder":"ID","defaultValue":null},{"key":"name","type":"textfield","input":true,"label":"name","validate":{"required":true},"inputType":"textfield","tableView":true,"columnName":"TASK_NAME","description":"name","placeholder":"name","defaultValue":null}]}',     NULL,     '{"WEIGHTAGECONFIGURATION": "id"}',     'WEIGHTAGECONFIGURATION',     'http://hrms-service/hrms/rest/VBHelper',     'WeightageConfiguration',     NULL,     NULL,     'http://hrms-service/hrms/rest/WeightageConfiguration/search?filter=id==$WEIGHTAGECONFIGURATION&offset=0&size=25',     'WeightageConfiguration',     'HRMS',     'OneToMany',     NULL,     '{"key": "id", "columnName": "ID"}',     '{"FIND": "findById", "CREATE": "create", "REMOVE": "deleteById", "UPDATE": "update", "CLASSTYPE": "INTERFACE", "CLASSLEVEL": "CONTROLLER", "CLASS_NAME": "WeightageConfigurationController", "PACKAGE_PATH": "com.enttribe.hrms.controller"}',     0x00,     216, 0x01, '{"mapping": true, "mappingKey": "employee", "resourceName": "Employee", "parentMappingKey": "id"}',     NULL,     NULL,NULL,     'WEIGHTAGE_CONFIGURATION',  NULL ,     NULL ); 

 

INSERT INTO RESOURCE_INFO (     CREATOR_FK,     CREATOR_NAME,     CREATED_TIME,     MODIFIER_FK,     MODIFIER_NAME,     MODIFIED_TIME,     NAME,     DISPLAY_NAME,     RESOURCE_JSON,     DESCRIPTION,     CONTEXT_JSON,     ENTITY_TYPE,     SERVICE_PATH,     CLASS_NAME,     METHOD_NAME,     CONTEXT_ID_SETTER,     CONTEXT_INFO,     REST_NAME,     URL_CONTEXT_NAME,     ENTITY_RELATION,     HISTORY_IDENTIFIER,     UNIQUE_IDENTIFIER,     METHOD_IDENTIFIER,     ENTITY_ID_REQUIRED,     APPLICATION_FK,   VISIBLE,     PARENT_RESOURCE,     SAMPLE_JSON,     type,     ADDITIONAL_MODIFIER,     TABLE_NAME,     COMMONS_ENTITY_KEY,     COLUMN_DATA_JSON ) VALUES (     137919,     'Patil',     now(),     137919,     'Patil',      now(),     'JobOpeningWeightageCriterias',     'JobOpeningWeightageCriterias',     '{"display":"form","components":[{"key":"id","type":"number","input":true,"label":"ID","validate":{"required":false},"inputType":"number","tableView":true,"description":"ID","placeholder":"ID","defaultValue":null},{"key":"name","type":"textfield","input":true,"label":"name","validate":{"required":true},"inputType":"textfield","tableView":true,"columnName":"TASK_NAME","description":"name","placeholder":"name","defaultValue":null}]}',     NULL,     '{"JOBOPENINGWEIGHTAGECRITERIAS": "id"}',     'JOBOPENINGWEIGHTAGECRITERIAS',     'http://hrms-service/hrms/rest/VBHelper',     'JobOpeningWeightageCriterias',     NULL,     NULL,     'http://hrms-service/hrms/rest/JobOpeningWeightageCriterias/search?filter=id==$JOBOPENINGWEIGHTAGECRITERIAS&offset=0&size=25',     'JobOpeningWeightageCriterias',     'HRMS',     'OneToMany',     NULL,     '{"key": "id", "columnName": "ID"}',     '{"FIND": "findById", "CREATE": "create", "REMOVE": "deleteById", "UPDATE": "update", "CLASSTYPE": "INTERFACE", "CLASSLEVEL": "CONTROLLER", "CLASS_NAME": "JobOpeningWeightageCriteriasController", "PACKAGE_PATH": "com.enttribe.hrms.controller"}',     0x00,     216, 0x01, '{"mapping": true, "mappingKey": "employee", "resourceName": "Employee", "parentMappingKey": "id"}',     NULL,     NULL,NULL,     'JOB_OPENING_WEIGHTAGE_CRITERIAS',  NULL ,     NULL ); 

   

  INSERT INTO RESOURCE_INFO (     CREATOR_FK,     CREATOR_NAME,     CREATED_TIME,     MODIFIER_FK,     MODIFIER_NAME,     MODIFIED_TIME,     NAME,     DISPLAY_NAME,     RESOURCE_JSON,     DESCRIPTION,     CONTEXT_JSON,     ENTITY_TYPE,     SERVICE_PATH,     CLASS_NAME,     METHOD_NAME,     CONTEXT_ID_SETTER,     CONTEXT_INFO,     REST_NAME,     URL_CONTEXT_NAME,     ENTITY_RELATION,     HISTORY_IDENTIFIER,     UNIQUE_IDENTIFIER,     METHOD_IDENTIFIER,     ENTITY_ID_REQUIRED,     APPLICATION_FK,   VISIBLE,     PARENT_RESOURCE,     SAMPLE_JSON,     type,     ADDITIONAL_MODIFIER,     TABLE_NAME,     COMMONS_ENTITY_KEY,     COLUMN_DATA_JSON ) VALUES (     137919,     'Patil',     now(),     137919,     'Patil',      now(),     'JobApplicationConfigurationScore',     'JobApplicationConfigurationScore',     '{"display":"form","components":[{"key":"id","type":"number","input":true,"label":"ID","validate":{"required":false},"inputType":"number","tableView":true,"description":"ID","placeholder":"ID","defaultValue":null},{"key":"name","type":"textfield","input":true,"label":"name","validate":{"required":true},"inputType":"textfield","tableView":true,"columnName":"TASK_NAME","description":"name","placeholder":"name","defaultValue":null}]}',     NULL,     '{"JOBAPPLICATIONCONFIGURATIONSCORE": "id"}',     'JOBAPPLICATIONCONFIGURATIONSCORE',     'http://hrms-service/hrms/rest/VBHelper',     'JobApplicationConfigurationScore',     NULL,     NULL,     'http://hrms-service/hrms/rest/JobApplicationConfigurationScore/search?filter=id==$JOBAPPLICATIONCONFIGURATIONSCORE&offset=0&size=25',     'JobApplicationConfigurationScore',     'HRMS',     'OneToMany',     NULL,     '{"key": "id", "columnName": "ID"}',     '{"FIND": "findById", "CREATE": "create", "REMOVE": "deleteById", "UPDATE": "update", "CLASSTYPE": "INTERFACE", "CLASSLEVEL": "CONTROLLER", "CLASS_NAME": "JobApplicationConfigurationScoreController", "PACKAGE_PATH": "com.enttribe.hrms.controller"}',     0x00,     216, 0x01, '{"mapping": true, "mappingKey": "employee", "resourceName": "Employee", "parentMappingKey": "id"}',     NULL,     NULL,NULL,     'JOB_APPLICATION_CONFIGURATION_SCORE', NULL ,     NULL ); 
  
  
  
  Alter table CHILD_EDUCATION_BENEFIT modify column `WORKFLOW_STAGE` varchar(255) DEFAULT NULL; 

alter table BUSINESS_EXPENSE add column FILE_PATH varchar(200) DEFAULT NULL ; 

ALTER TABLE APPLICANT ADD COLUMN APPLICANT_TYPE ENUM('Regular', 'Referred', 'Head-Hunted') DEFAULT 'Regular'; 

ALTER TABLE OVERTIME_LOGS ADD COLUMN OVERTIME_MINUTES INT DEFAULT NULL; 

ALTER TABLE OVERTIME_LOGS  ADD COLUMN DESCRIPTION LONGTEXT DEFAULT NULL; 

ALTER TABLE OVERTIME ADD COLUMN APPROVAL_STATUS enum('Pending','Approved','Reject','Under-Review','Closed','On Hold')  DEFAULT NULL; 

 

 

 

CREATE TABLE `EMPLOYEE_CHILDREN` (   `ID` int NOT NULL AUTO_INCREMENT,   `NAME` varchar(100) DEFAULT NULL,   `EMPLOYEE_ID` int NOT NULL,   `DATE_OF_BIRTH` datetime DEFAULT NULL,   `NATIONAL_ID_TYPE` varchar(100) DEFAULT NULL,   `NATIONAL_ID_NUMBER` varchar(100) DEFAULT NULL,   `TEXT1` varchar(250) DEFAULT NULL,   `AMOUNT` double DEFAULT NULL,   `CHILD_EDUCATION_BENEFIT_ID` int NOT NULL,   `PROCESS_INSTANCE_ID` varchar(100) DEFAULT NULL,   `WORKFLOW_STAGE` varchar(100) DEFAULT NULL,   `CREATED_TIME` datetime(6) DEFAULT NULL,   `MODIFIED_TIME` datetime(6) DEFAULT NULL,   `CREATOR` int DEFAULT NULL,   `LAST_MODIFIER` int DEFAULT NULL,   PRIMARY KEY (`ID`),   KEY `EMPLOYEE_ID` (`EMPLOYEE_ID`),    KEY `CHILD_EDUCATION_BENEFIT_ID` (`CHILD_EDUCATION_BENEFIT_ID`),   KEY `FKryunt4ywp525bi3f53jifd5qjamwqq1` (`CREATOR`),   KEY `FKhfqj4fkf32oyx6srfdihcvdfdfqww1` (`LAST_MODIFIER`),   CONSTRAINT `FKhfqj4fkf32oyx6srfdihcvdfdfqww1` FOREIGN KEY (`LAST_MODIFIER`) REFERENCES `User` (`ID`),   CONSTRAINT `FKryunt4ywp525bi3f53jifd5qjamwqq1` FOREIGN KEY (`CREATOR`) REFERENCES `User` (`ID`),   CONSTRAINT `employeechildren_ibfk_1` FOREIGN KEY (`EMPLOYEE_ID`) REFERENCES `EMPLOYEE` (`ID`),   CONSTRAINT `employeechildren_ibwuwfk_1` FOREIGN KEY (`CHILD_EDUCATION_BENEFIT_ID`) REFERENCES `CHILD_EDUCATION_BENEFIT` (`ID`) ); 

 

CREATE TABLE `MASTER_DATA` ( `ID` int NOT NULL AUTO_INCREMENT,`NAME` varchar(255) DEFAULT NULL, `TYPE` varchar(255) DEFAULT NULL, `CODE` int DEFAULT NULL, `SUB_TYPE` varchar(255) DEFAULT NULL, PRIMARY KEY (`ID`) ); 

 

 

CREATE TABLE `WEIGHTAGE_CONFIGURATION` (   `ID` int NOT NULL AUTO_INCREMENT,   `CONFIGURATION_NAME` varchar(200) DEFAULT NULL,   `CONFIGURATION_JSON` json DEFAULT NULL,   `PROCESS_INSTANCE_ID` varchar(100) DEFAULT NULL,   `WORKFLOW_STAGE` varchar(100) DEFAULT NULL,   `CREATED_TIME` datetime(6) DEFAULT NULL,   `MODIFIED_TIME` datetime(6) DEFAULT NULL,   `CREATOR` int DEFAULT NULL,   `LAST_MODIFIER` int DEFAULT NULL,   PRIMARY KEY (`ID`),   KEY `FKryunt4ywp5265bi3f53jifd5qjamwq` (`CREATOR`),   KEY `FKhfqj4fkf326oyx6srfdihcvdfdfqw` (`LAST_MODIFIER`),   CONSTRAINT `FKhfqj4fkf326oyx6srfdihcvdfdfqw` FOREIGN KEY (`LAST_MODIFIER`) REFERENCES `User` (`ID`),   CONSTRAINT `FKryunt4ywp5265bi3f53jifd5qjamwq` FOREIGN KEY (`CREATOR`) REFERENCES `User` (`ID`) ); 

 

CREATE TABLE `JOB_OPENING_WEIGHTAGE_CRITERIAS` (`ID` int NOT NULL AUTO_INCREMENT,`JOB_OPENING_ID` int DEFAULT NULL,`WEIGHTAGE` double DEFAULT NULL,`CONFIGURATION_ID` int DEFAULT NULL,`PROCESS_INSTANCE_ID` varchar(100) DEFAULT NULL,`WORKFLOW_STAGE` varchar(100) DEFAULT NULL,`CREATED_TIME` datetime(6) DEFAULT NULL,`MODIFIED_TIME` datetime(6) DEFAULT NULL,`CREATOR` int DEFAULT NULL,`LAST_MODIFIER` int DEFAULT NULL,PRIMARY KEY (`ID`), KEY `JOB_OPENING_ID` (`JOB_OPENING_ID`), KEY `CONFIGURATION_ID` (`CONFIGURATION_ID`),KEY `FKryunt4ywp15265bi3f53jifd5qjamwq` (`CREATOR`),KEY `FKhfqj4fkf1326oyx6srfdihcvdfdfqw` (`LAST_MODIFIER`),CONSTRAINT `jobOpening_ibfk1` FOREIGN KEY (`JOB_OPENING_ID`) REFERENCES `JOB_OPENING` (`ID`), CONSTRAINT `weightageConfiguration_ibfk1` FOREIGN KEY (`CONFIGURATION_ID`) REFERENCES `WEIGHTAGE_CONFIGURATION` (`ID`),CONSTRAINT `FKhfqj4fkf1326oyx6srfdihcvdfdfqw` FOREIGN KEY (`LAST_MODIFIER`) REFERENCES `User` (`ID`),CONSTRAINT `FKryunt4ywp15265bi3f53jifd5qjamwq` FOREIGN KEY (`CREATOR`) REFERENCES `User` (`ID`)); 

 

 

CREATE TABLE `JOB_APPLICATION_CONFIGURATION_SCORE` (`ID` int NOT NULL AUTO_INCREMENT, `JOB_APPLICATION_ID` int DEFAULT NULL,`INDIVIDUAL_SCORE` double DEFAULT NULL,`CONFIGURATION_ID` int DEFAULT NULL,`PROCESS_INSTANCE_ID` varchar(100) DEFAULT NULL, `WORKFLOW_STAGE` varchar(100) DEFAULT NULL,`CREATED_TIME` datetime(6) DEFAULT NULL,`MODIFIED_TIME` datetime(6) DEFAULT NULL,`CREATOR` int DEFAULT NULL,`LAST_MODIFIER` int DEFAULT NULL,PRIMARY KEY (`ID`), KEY `JOB_APPLICATION_ID` (`JOB_APPLICATION_ID`),KEY `CONFIGURATION_ID` (`CONFIGURATION_ID`), KEY `FKryunt4ywp115265bi3f53jifd5qjamwq` (`CREATOR`),KEY `FKhfqj4fkf11326oyx6srfdihcvdfdfqw` (`LAST_MODIFIER`),CONSTRAINT `jobApplication_ibfk1` FOREIGN KEY (`JOB_APPLICATION_ID`) REFERENCES `JOB_APPLICATION` (`ID`),CONSTRAINT `weightageConfiguration_ibfk11` FOREIGN KEY (`CONFIGURATION_ID`) REFERENCES `WEIGHTAGE_CONFIGURATION` (`ID`),CONSTRAINT `FKhfqj4fkf11326oyx6srfdihcvdfdfqw` FOREIGN KEY (`LAST_MODIFIER`) REFERENCES `User` (`ID`),CONSTRAINT `FKryunt4ywp115265bi3f53jifd5qjamwq` FOREIGN KEY (`CREATOR`) REFERENCES `User` (`ID`)); 

 

 

CREATE TABLE FILE_DATA (ID INT AUTO_INCREMENT PRIMARY KEY,TYPE VARCHAR(255) NOT NULL,FILE_PATH VARCHAR(255) NOT NULL,RECORD_DATE DATE NOT NULL, WEEK_NUM INT NOT NULL,YEAR INT NOT NULL); 

CREATE TABLE `INTEGRATION_LOG` ( `ID` INT NOT NULL AUTO_INCREMENT, `URL` VARCHAR(500) NOT NULL,`HEADER` VARCHAR(4000) DEFAULT NULL, `PAYLOAD` VARCHAR(4000) DEFAULT NULL, `INTEGRATION_TYPE` VARCHAR(100) NOT NULL,`RETRY_COUNT` INT NOT NULL, `RESPONSE` VARCHAR(4000) DEFAULT NULL, `STATUS` VARCHAR(100) NOT NULL, `CREATED_TIME` DATETIME DEFAULT NULL,`HTTP_TYPE` VARCHAR(100) NOT NULL,`BATCH_NAME` INT DEFAULT NULL,PRIMARY KEY (`ID`)); 





ALTER TABLE `INTEGRATION_LOG` MODIFY `PAYLOAD` TEXT; 

ALTER TABLE WORKFLOW_ACTION  ADD COLUMN ADDITIONAL_INFO VARCHAR(500) COMMENT 'To store the additional info of the workflow action'; 

Alter table DESIGNATION add column `RESPONSIBILITIES` longtext; 
Alter table DESIGNATION add column `KPI` longtext; 

 

INSERT INTO WEIGHTAGE_CONFIGURATION(CONFIGURATION_NAME, CONFIGURATION_JSON) VALUES('Work Experience','{"applicantFields": "experienceInYears","jobOpeningFields": "descriptionRequirements,workExperience","applicantExperienceFields": "summary,occupation"}'); 

INSERT INTO WEIGHTAGE_CONFIGURATION(CONFIGURATION_NAME, CONFIGURATION_JSON) VALUES ('Education','{"jobOpeningFields": "descriptionRequirements","applicantEducationFields": "fieldOfStudy,degreeDiploma"}'); 

INSERT INTO WEIGHTAGE_CONFIGURATION(CONFIGURATION_NAME, CONFIGURATION_JSON) VALUES ('Skills','{"applicantFields": "skillSet","jobOpeningFields": "skills"}'); 

INSERT INTO WEIGHTAGE_CONFIGURATION(CONFIGURATION_NAME, CONFIGURATION_JSON) VALUES ('Certification','{"jobOpeningFields": "descriptionRequirements","applicantCertificationsFields": "certificationName,issuingInstitution"}'); 

INSERT INTO WEIGHTAGE_CONFIGURATION(CONFIGURATION_NAME, CONFIGURATION_JSON) VALUES ('Language','{"jobOpeningFields": "descriptionRequirements","applicantLanguageFields": "languageLevel,languageName"}'); 

INSERT INTO WEIGHTAGE_CONFIGURATION(CONFIGURATION_NAME, CONFIGURATION_JSON) VALUES ('Technical Proficiency with Tools','{"applicantFields": "skillSet","jobOpeningFields": "descriptionRequirements"}'); 

INSERT INTO WEIGHTAGE_CONFIGURATION(CONFIGURATION_NAME, CONFIGURATION_JSON) VALUES ('Work History Stability	','{"applicantExperienceFields": "duration" }'); 

INSERT INTO WEIGHTAGE_CONFIGURATION(CONFIGURATION_NAME, CONFIGURATION_JSON) VALUES ('Saudization','{"applicantFields": "citizenshipStatus"}'); 

INSERT INTO WEIGHTAGE_CONFIGURATION(CONFIGURATION_NAME, CONFIGURATION_JSON) VALUES ('Location and Availability','{"applicantFields": "eligibleToWorkInSaudi,noticePeriod,willingToRelocate,preferredLocation,earliestDateToJoin"}'); 
