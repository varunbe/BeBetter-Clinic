/*

ISC 567-568
IS Enterprise Integration
Fall 2016

*/

USE Master 
GO 

/*Creating the database.*/
CREATE DATABASE SR	
GO

USE SR
GO

/*Creating the tables*/

CREATE TABLE tblResources
  (
  ResourcesID INT IDENTITY (1,1) PRIMARY KEY,
  ResourceDescription VARCHAR (350) NOT NULL,
  ResourceLink VARCHAR (350) NOT NULL,
  )
  GO

CREATE TABLE tblAlerts
	(
	AlertID INT IDENTITY (1,1) PRIMARY KEY,
	AlertPatientEmail VARCHAR NOT NULL,
	FirstName NVARCHAR (250) NOT NULL,
	LastName NVARCHAR (25) NOT NULL,
	DOB DATETIME NOT NULL,
	LastAppointment DATETIME NULL
	)
	GO

CREATE TABLE tblAppointment
  (
  AppointmentID INT IDENTITY (1,1) PRIMARY KEY,
  StartTime DATETIME,
  EndTime DATETIME
  )
  GO

CREATE TABLE tblAppointmentType
  (
  AppointmentTypeID INT IDENTITY (1,1) PRIMARY KEY,
  AppointmentType CHAR (20) NOT NULL
  )
  GO

CREATE TABLE tblPatient
(
 PatientEmail VARCHAR(254) PRIMARY KEY,
 PatientFirstName VARCHAR (50) NOT NULL,
 PatientMiddleName VARCHAR (50) NULL,
 PatientLastName VARCHAR (50) NOT NULL,
 PatientDOB DATE NOT NULL,
 PatientAge VARCHAR (5) NOT NULL,
 PatientStreet VARCHAR (50) NOT NULL,
 PatientCity VARCHAR (50) NOT NULL,
 PatientState VARCHAR (50) NOT NULL,
 PatientZip VARCHAR (10) NOT NULL,
 PatientTelephone VARCHAR (50) NOT NULL,
 GuardianFirstName VARCHAR (50) NULL,
 GuardianMiddleName VARCHAR (50) NULL,
 GuardianLastName VARCHAR (50) NULL,
 Insurance VARCHAR (50) NOT NULL, 
 Username NVARCHAR (100) NOT NULL,
 [Password] NVARCHAR (100) NOT NULL,
 ConfirmationPassword NVARCHAR (100) NOT NULL,
 LastAppointment DATE NULL
 )
 GO

 CREATE TABLE tblProvider
 (
 ProviderID INT IDENTITY (1,1) PRIMARY KEY,
 ProviderFirstName VARCHAR (50) NOT NULL,
 ProviderLastName VARCHAR (50) NOT NULL,
 Credentials VARCHAR (50) NOT NULL
 )
 GO

CREATE TABLE tblAvailability 
  (
   AvailabilityID INT IDENTITY (1,1) PRIMARY KEY,
   SlotNumber CHAR (100) NOT NULL,
   SlotStartTime DATETIME NOT NULL,
   Availability BIT,
   )
  GO

/*This is the intersection table*/
CREATE TABLE tblSchedule
	  (
	  ScheduleID INT IDENTITY (1,1) PRIMARY KEY,
	  NumberOfSlotsUsed INT,
	  AppointmentLength INT
	  )
	  GO

/*Creating foreign keys and foreign key constraints*/
	  ALTER TABLE tblAppointment
	  ADD PatientEmail VARCHAR(254) NOT NULL 
	  GO

	  ALTER TABLE tblAppointment
	  ADD CONSTRAINT Patient_fk FOREIGN KEY (PatientEmail)
	  REFERENCES tblPatient(PatientEmail)
	  GO

	  ALTER TABLE tblAppointment
	  ADD ProviderID INT NOT NULL
	  GO

	  ALTER TABLE tblAppointment
	  ADD CONSTRAINT Provider_fk FOREIGN KEY (ProviderID)
	  REFERENCES tblProvider(ProviderID)
	  GO

	  ALTER TABLE tblSchedule
	  ADD AppointmentTypeID INT NOT NULL 
	  GO

	  ALTER TABLE tblSchedule
	  ADD CONSTRAINT AppointmentType_fk FOREIGN KEY (AppointmentTypeID)
	  REFERENCES tblAppointmentType (AppointmentTypeID)
	  GO
	  
	  ALTER TABLE tblAvailability
	  ADD ProviderID INT NOT NULL 
	  GO

	  ALTER TABLE tblAvailability
	  ADD CONSTRAINT ProviderAvailabilty_fk FOREIGN KEY (ProviderID)
	  REFERENCES tblProvider (ProviderID)
	  GO

	  ALTER TABLE tblSchedule
	  ADD AvailabilityID INT NOT NULL
	  GO

	  ALTER TABLE tblSchedule
	  ADD CONSTRAINT Availability_fk FOREIGN KEY (AvailabilityID)
	  REFERENCES tblAvailability (AvailabilityID)
	  GO

	  ALTER TABLE tblSchedule
	  ADD AppointmentID INT NOT NULL 
	  GO
	  
	  ALTER TABLE tblSchedule
	  ADD CONSTRAINT Appointment_fk FOREIGN KEY (AppointmentID)
	  REFERENCES tblAppointment (AppointmentID)
	  GO


/*Adding default constraints*/

	  ALTER TABLE tblPatient
	  ADD CONSTRAINT PatientMiddleName_Default
	  DEFAULT ' ' FOR PatientMiddleName
	  GO

	  ALTER TABLE tblPatient
	  ADD CONSTRAINT GuardianFirstName_Default
	  DEFAULT ' ' FOR GuardianFirstName
	  GO

	  ALTER TABLE tblPatient
	  ADD CONSTRAINT GuardianMiddleName_Default
	  DEFAULT ' ' FOR GuardianMiddleName
	  GO

	  ALTER TABLE tblPatient
	  ADD CONSTRAINT GuardianLastName_Default
	  DEFAULT ' ' FOR GuardianLastName
	  GO

	  ALTER TABLE tblPatient
	  ADD CONSTRAINT Insurance_Default
	  DEFAULT 'Self Pay' FOR Insurance
	  GO

	  ALTER TABLE tblPatient
	  ADD CONSTRAINT LastAppointment_Default
	  DEFAULT '' FOR LastAppointment
	  GO

	  ALTER TABLE tblAvailability
	  ADD CONSTRAINT Availability_Default
	  DEFAULT 'True' FOR Availability
	  GO

/*Adding uniqueness constraints*/

/*A patient cannot have duplicate appointments of the same type scheduled.*/
	  ALTER TABLE tblAppointmentType
	  ADD CONSTRAINT AppointmentType_Unique UNIQUE (AppointmentType)
	  GO

/*Two patients cannot have the same username.*/
	  ALTER TABLE tblPatient
	  ADD CONSTRAINT Username_Unique UNIQUE (Username)
	  GO
	  
/*Inserting sample data.*/
	BEGIN TRY
		BEGIN TRANSACTION
		INSERT INTO tblResources (ResourceDescription, ResourceLink)
			VALUES ('Autism', 'www.autismspeaks.org'),
			       ('ADHD', 'www.cdc.gov/ncbddd/adhd')
		COMMIT TRANSACTION
		PRINT 'Successfully inserted'
      END TRY


	 BEGIN CATCH 
		DECLARE @ErrorMessage VARCHAR (500)
		SET @ErrorMessage = ERROR_MESSAGE () + 'Rolledback Transaction'
		ROLLBACK TRANSACTION
		RAISERROR (@ErrorMessage, 16, 1)
	END CATCH
    GO

	BEGIN TRY
		BEGIN TRANSACTION
		INSERT INTO tblPatient (PatientEmail,PatientFirstName, PatientLastName, PatientDOB, PatientAge, 
                          PatientStreet, PatientCity, PatientState, PatientZip, PatientTelephone, 
                          Insurance, Username, [Password], ConfirmationPassword, LastAppointment)
VALUES ('SREE@gmail.com','John', 'Smith', '1963/02/02', '53', '123 Fake St', 'Daphne', 'AL',    
        '36526', '555333444', 'BC/BS', 'username', 'password', 'password', '2016/09/23')
		COMMIT TRANSACTION
		PRINT 'Successfully inserted'
      END TRY

	 BEGIN CATCH 
		DECLARE @ErrorMessage VARCHAR (500)
		SET @ErrorMessage = ERROR_MESSAGE () + 'Rolledback Transaction'
		ROLLBACK TRANSACTION
		RAISERROR (@ErrorMessage, 16, 1)
	END CATCH
	GO
	
	BEGIN TRY
		BEGIN TRANSACTION
		INSERT INTO tblProvider (ProviderFirstName, ProviderLastName, Credentials)
			VALUES ('Joanne', 'Koulianos', 'Ph.D.'), 
				   ('Kimberly', 'Zlomkey', 'Ph.D.'),
			       ('Shelby', 'Kotner', 'CCC-SLP')
		COMMIT TRANSACTION
		PRINT 'Successfully inserted'
      END TRY


	 BEGIN CATCH 
		DECLARE @ErrorMessage VARCHAR (500)
		SET @ErrorMessage = ERROR_MESSAGE () + 'Rolledback Transaction'
		ROLLBACK TRANSACTION
		RAISERROR (@ErrorMessage, 16, 1)
	END CATCH
    GO

	BEGIN TRY
		BEGIN TRANSACTION
		DECLARE @ProviderID INT
		SET @ProviderID = (SELECT ProviderID FROM tblProvider WHERE ProviderLastName = 'Zlomkey')
		INSERT INTO tblAvailability (SlotNumber, SlotStartTime, ProviderID)
			VALUES ('1', '2016/09/23 8:30', @ProviderID), /*8:30am*/
			       ('2', '2016/09/23 9:00', @ProviderID), /*9:00am*/
				   ('3', '2016/09/23 9:30', @ProviderID), /*9:30am*/
				   ('4', '2016/09/23 10:00', @ProviderID), /*10:00am*/
				   ('5', '2016/09/23 10:30', @ProviderID), /*10:30am*/
				   ('6', '2016/09/23 11:00', @ProviderID), /*11:00am*/
				   ('7', '2016/09/23 11:30', @ProviderID), /*11:30am*/
				   ('8', '2016/09/23 12:00', @ProviderID), /*12:00pm*/
				   ('9', '2016/09/23 12:30', @ProviderID), /*12:30pm*/
				   ('10', '2016/09/2 13:00', @ProviderID), /*1:00pm*/
				   ('11', '2016/09/23 13:30', @ProviderID), /*1:30pm*/
				   ('12', '2016/09/23 14:00', @ProviderID), /*2:00pm*/
				   ('13', '2016/09/23 14:30', @ProviderID), /*2:30pm*/
				   ('14', '2016/09/23 15:00', @ProviderID), /*3:00pm*/
				   ('15', '2016/09/23 15:30', @ProviderID) /*3:30pm*/
		COMMIT TRANSACTION
		PRINT 'Successfully inserted'
      END TRY

	 BEGIN CATCH 
		DECLARE @ErrorMessage VARCHAR (500)
		SET @ErrorMessage = ERROR_MESSAGE () + 'Rolledback Transaction'
		ROLLBACK TRANSACTION
		RAISERROR (@ErrorMessage, 16, 1)
	END CATCH
    GO

	BEGIN TRY
		BEGIN TRANSACTION
		INSERT INTO tblAppointmentType(AppointmentType)
			VALUES ('ADOS'),
				   ('CRM'),
				   ('Testing'),
				   ('Initial Evaluation'),
				   ('Feed-back'),
				   ('Consult')
		COMMIT TRANSACTION
		PRINT 'Successfully inserted'
      END TRY


	 BEGIN CATCH 
		DECLARE @ErrorMessage VARCHAR (500)
		SET @ErrorMessage = ERROR_MESSAGE () + 'Rolledback Transaction'
		ROLLBACK TRANSACTION
		RAISERROR (@ErrorMessage, 16, 1)
	END CATCH
    GO

	BEGIN TRY
		BEGIN TRANSACTION
		DECLARE @PatientEmail VARCHAR, @ProviderID INT
		SET @PatientEmail = (SELECT @PatientEmail FROM tblPatient WHERE Username = 'username')
		SET @ProviderID = (SELECT ProviderID FROM tblProvider WHERE ProviderLastName = 'Zlomkey')
		INSERT INTO tblAppointment (StartTime, EndTime, PatientEmail, ProviderID)
			 VALUES ('2016/09/23 8:30', '2016/09/23 9:30', @PatientEmail, @ProviderID)
		COMMIT TRANSACTION
		PRINT 'Successfully inserted'
      END TRY

	 BEGIN CATCH 
		DECLARE @ErrorMessage VARCHAR (500)
		SET @ErrorMessage = ERROR_MESSAGE () + 'Rolledback Transaction'
		ROLLBACK TRANSACTION
		RAISERROR (@ErrorMessage, 16, 1)
	END CATCH
    GO

	BEGIN TRY
		BEGIN TRANSACTION
		DECLARE @AvailabilityID INT, @AppointmentID INT, @AppointmentTypeID INT, @ProviderID INT
		SET @AvailabilityID = (SELECT AvailabilityID FROM tblAvailability WHERE SlotNumber = '1')
		SET @AppointmentID = (SELECT AppointmentID FROM tblAppointment WHERE StartTime = '2016/09/23 8:30'AND ProviderID = '2')
		SET @AppointmentTypeID = (SELECT AppointmentTypeID FROM tblAppointmentType WHERE AppointmentType = 'ADOS')
		INSERT INTO tblSchedule (NumberOfSlotsUsed, AppointmentLength, AppointmentID, AppointmentTypeID, AvailabilityID)
			 VALUES ('2', '60', @AppointmentID, @AppointmentTypeID, @AvailabilityID)	
		COMMIT TRANSACTION
		PRINT 'Successfully inserted'
      END TRY

	 BEGIN CATCH 
		DECLARE @ErrorMessage VARCHAR (500)
		SET @ErrorMessage = ERROR_MESSAGE () + 'Rolledback Transaction'
		ROLLBACK TRANSACTION
		RAISERROR (@ErrorMessage, 16, 1)
	END CATCH
    GO




PRINT 'PROC getResources created'
Go


--STORED PROCEDURES TO INSERT DATA


CREATE PROC addResources
    
	@ResourceDescription varchar (350),
	@ResourceLink varchar (350)

AS	
BEGIN 
	BEGIN TRY
		BEGIN TRANSACTION
			INSERT INTO tblResources(ResourceDescription, ResourceLink)
			VALUES(@ResourceDescription, @ResourceLink)
		COMMIT TRANSACTION
		PRINT 'NEW RESOURCE INSERTED'
	END TRY
	BEGIN CATCH 
		DECLARE @ERRORMESSAGE VARCHAR(50)
		SET @ERRORMESSAGE=ERROR_MESSAGE()+'ROLLBACK TRANSACTION' +'INSERT PROCEDURE FAILED'
		ROLLBACK TRANSACTION
		RAISERROR (@ERRORMESSAGE ,16,1)
	END CATCH 
END 

Go

Print 'addResource PROC Created'
Go



--STORED PROCEDURES TO UPDATE DATA


 CREATE PROC UpdateResource
    @ResourcesID INT,
    @ResourceDescription varchar (350),
	@ResourceLink varchar (350)
AS 
BEGIN 
	BEGIN TRY 
		BEGIN TRANSACTION 
			UPDATE tblResources
			SET 
			ResourceDescription = @ResourceDescription,
			ResourceLink = @ResourceLink

			WHERE tblResources.ResourcesID = @ResourcesID
		COMMIT TRANSACTION
	END TRY 
	BEGIN CATCH 
		DECLARE @ERRORMESSAGE VARCHAR(50)
		SET @ERRORMESSAGE = ERROR_MESSAGE()+'ROLLBACK TRANSACTION'+'UPDATE PROCEDURE FAILED'
		ROLLBACK TRANSACTION 
		RAISERROR(@ERRORMESSAGE,16,1)
	END CATCH 
END 

Go
 
PRINT 'UpdateResource PROC created'
Go


--STORED PROCEDURES TO DELETE DATA

CREATE PROC DeleteResource
@ResourcesID INT
AS 
BEGIN 
	BEGIN TRY 
		BEGIN TRANSACTION 
			DELETE FROM tblResources
			WHERE tblResources.ResourcesID = @ResourcesID
		COMMIT TRANSACTION 
	END TRY 
	BEGIN CATCH 
		DECLARE @ERRORMESSAGE VARCHAR(50)
		SET @ERRORMESSAGE = ERROR_MESSAGE()+'ROLLBACK TRANSACTION'+'DELETE PROCEDURE FAILED'
		ROLLBACK TRANSACTION 
		RAISERROR(@ERRORMESSAGE,16,1)
	END CATCH 
END 

Go

PRINT 'PROC DeleteResource created'
Go


CREATE TRIGGER trgAfterPatientInsert 
	ON tblPatient
	FOR INSERT
	AS
		DECLARE @AlertPatientEmail VARCHAR;
		DECLARE @FirstName VARCHAR(50);
		DECLARE @LastName VARCHAR(50);
		DECLARE @DOB DATETIME;

		SELECT @AlertPatientEmail=i.PatientEmail FROM inserted i;
		SELECT @FirstName=i.PatientFirstName FROM inserted i;
		SELECT @LastName=i.PatientLastName FROM inserted i;
		SELECT @DOB=i.PatientDOB FROM inserted i;


		INSERT INTO tblAlerts
			(AlertPatientEmail, FirstName, LastName, DOB)
		VALUES
			(@AlertPatientEmail, @FirstName, @LastName, @DOB)
	GO

	
--Stored procedures for patient

--GetPatient()
CREATE PROC GetPatient
AS
BEGIN
   SELECT *
   FROM tblPatient;
END
GO

--AddPatient()---NEED TO EXECUTE
CREATE PROC AddPatientdetails
 --Input Parameter
 @PatientEmail VARCHAR(254),
@PatientFirstName VARCHAR(50),
@PatientMiddleName VARCHAR(50),
@PatientLastName VARCHAR(50),
@PatientDOB DATE,
@PatientAge VARCHAR(5),
@PatientStreet VARCHAR(50),
@PatientCity VARCHAR(50),
@PatientState VARCHAR(50),
@PatientZip VARCHAR(10),
@PatientTelephone VARCHAR(50),
@GuardianFirstName VARCHAR(50),
@GuardianMiddleName VARCHAR(50),
@GuardianLastName VARCHAR(50),
@Insurance VARCHAR(50), 
@Username NVARCHAR(100),
@Password NVARCHAR(100),
@ConfirmationPassword NVARCHAR(100)


AS
BEGIN
  BEGIN TRY 
  
    BEGIN TRANSACTION
    --Transaction           
    INSERT INTO tblPatient (PatientEmail,PatientFirstName,PatientMiddleName,PatientLastName,PatientDOB,PatientAge,PatientStreet,PatientCity,PatientState,PatientZip,PatientTelephone,GuardianFirstName,GuardianMiddleName,GuardianLastName,Insurance,Username,[Password],ConfirmationPassword)
         VALUES (@PatientEmail,@PatientFirstName,@PatientMiddleName,@PatientLastName,@PatientDOB,@PatientAge,@PatientStreet,@PatientCity,@PatientState,@PatientZip,@PatientTelephone,@GuardianFirstName,@GuardianMiddleName,@GuardianLastName,@Insurance,@Username,@Password,@ConfirmationPassword)

    COMMIT TRANSACTION

  END TRY
  BEGIN CATCH
    DECLARE @ErrorMessage VARCHAR(500)
    SET @ErrorMessage = ERROR_MESSAGE() + ' Rolledback transaction: Insert.'
    ROLLBACK TRANSACTION
    RAISERROR (@ErrorMessage, 16,1)
 END CATCH
END

GO


--UpdatePatient()
CREATE PROC UpdatePatientDetail

AS
BEGIN
   BEGIN TRY
     BEGIN TRANSACTION
	 DECLARE @PatientEmail VARCHAR(254),
	 @PatientFirstName VARCHAR(50),
@PatientMiddleName VARCHAR(50),
@PatientLastName VARCHAR(50),
@PatientDOB DATE,
@PatientAge VARCHAR(5),
@PatientStreet VARCHAR(50),
@PatientCity VARCHAR(50),
@PatientState VARCHAR(50),
@PatientZip VARCHAR(10),
@PatientTelephone VARCHAR(50),
@GuardianFirstName VARCHAR(50),
@GuardianMiddleName VARCHAR(50),
@GuardianLastName VARCHAR(50),
@Insurance VARCHAR(50), 
@Username NVARCHAR(100),
@Password NVARCHAR(100),
@ConfirmationPassword NVARCHAR(100)

       --Transaction
       UPDATE tblPatient SET PatientEmail=@PatientEmail,PatientFirstName=@PatientFirstName,PatientMiddleName=@PatientMiddleName,PatientLastName=@PatientLastName,PatientDOB=@PatientDOB,PatientAge=@PatientAge,PatientStreet=@PatientStreet,PatientCity=@PatientCity,PatientState=@PatientState,PatientZip=@PatientZip,PatientTelephone=@PatientTelephone,GuardianFirstName=@GuardianFirstName,GuardianMiddleName=@GuardianMiddleName,GuardianLastName=@GuardianMiddleName,Insurance=@Insurance,Username=@Username,[password]=@Password,ConfirmationPassword=@ConfirmationPassword
       WHERE @PatientEmail=@PatientEmail

       COMMIT TRANSACTION

   END TRY
   BEGIN CATCH
     DECLARE @ErrorMessage VARCHAR(500)
     SET @ErrorMessage = ERROR_MESSAGE() + ' Rolledback transaction: Update.'
     ROLLBACK TRANSACTION
     RAISERROR (@ErrorMessage, 16,1)
   END CATCH

END

GO

--DeletePatient()
CREATE PROC DeletePatient
@PatientEmail INT
AS
BEGIN
   BEGIN TRY
      BEGIN TRANSACTION

        --Transaction
        DELETE tblPatient 
        WHERE tblPatient.PatientEmail=@PatientEmail

      COMMIT TRANSACTION

   END TRY
   BEGIN CATCH
     DECLARE @ErrorMessage VARCHAR(500)
     SET @ErrorMessage = ERROR_MESSAGE() + ' Rolledback transaction:  Delete.'
     ROLLBACK TRANSACTION
     RAISERROR (@ErrorMessage, 16,1)
   END CATCH
END

GO