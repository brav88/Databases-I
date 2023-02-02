
/*
DROP TABLE [dbo].[LoginHistory]
DROP TABLE [dbo].[Login]
DROP TABLE [dbo].[PersonPersonEmail]
DROP TABLE [dbo].[PersonPersonAddress]
DROP TABLE [dbo].[PersonEmail]
DROP TABLE [dbo].[PersonAddress]
DROP TABLE [dbo].[PersonPhone]
DROP TABLE [dbo].[Person]
*/

CREATE TABLE [Person] 
(
	[id]			INT          NOT NULL,	
	[name]			VARCHAR(50)  NOT NULL,
	[lastName]		VARCHAR(50)  NULL,
	[dob]			DATE    	 NULL,
	[status]		CHAR(1)	     NULL DEFAULT 1,
	[modified_date] DATETIME     NULL,
	[created_date]  DATETIME     NULL DEFAULT GETDATE()
	CONSTRAINT [PK_Person_id] PRIMARY KEY CLUSTERED 
	(
		[id]
	) ON [PRIMARY]
)

CREATE TABLE [PersonEmail] 
(
	[idMail]	    INT          NOT NULL,
	[mail]	        VARCHAR(50)  NOT NULL,	
	[status]        CHAR(1)	     NULL DEFAULT 1,
	[modified_date] DATETIME     NULL,
	[created_date]  DATETIME     NULL DEFAULT GETDATE()
	CONSTRAINT [PK_PersonEmail_idEmail] PRIMARY KEY CLUSTERED 
	(
		[idMail]
	) ON [PRIMARY]
)

CREATE TABLE [PersonPersonEmail] 
(
	[id]			INT          NOT NULL,	
	[idMail]	    INT          NOT NULL,
	[default]       CHAR(1)	     NULL DEFAULT 1,
	[status]		CHAR(1)	     NULL DEFAULT 1,
	[modified_date] DATETIME     NULL,
	[created_date]  DATETIME     NULL DEFAULT GETDATE()
)

ALTER TABLE [PersonPersonEmail] ADD CONSTRAINT [FK_PersonPersonEmail_id_id] FOREIGN KEY([id])
REFERENCES Person(id)
GO

ALTER TABLE [PersonPersonEmail] ADD CONSTRAINT [FK_PersonPersonEmail_idMail_idMail] FOREIGN KEY([idMail])
REFERENCES PersonEmail(idMail)
GO

CREATE TABLE [Login] 
(
	[loginId]       INT	         NOT NULL,
	[id]			INT          NOT NULL,	
	[alias]			VARCHAR(50)  NULL,
	[passw]			VARBINARY	 NOT NULL,	
	[status]		CHAR(1)	     NULL DEFAULT 1,	
	[modified_date] DATETIME     NULL,
	[created_date]  DATETIME     NULL DEFAULT GETDATE()
	CONSTRAINT [PK_Login_loginId] PRIMARY KEY CLUSTERED 
	(
		[loginId]
	) ON [PRIMARY]
)

ALTER TABLE [Login] ADD CONSTRAINT [FK_Login_id_id] FOREIGN KEY([id])
REFERENCES Person([id])
GO

CREATE TABLE [LoginHistory] 
(
	[loginId]	    INT	         NULL,
	[id]			INT          NOT NULL,		
	[passw]			VARBINARY	 NOT NULL,		
	[modified_date] DATETIME     NULL,
	[created_date]  DATETIME     NULL DEFAULT GETDATE()
)

ALTER TABLE [LoginHistory] ADD CONSTRAINT [FK_LoginHistory_loginId_loginId] FOREIGN KEY([loginId])
REFERENCES Login([loginId])
GO

CREATE TABLE [PersonPhone]
(
	[id]	        INT          NOT NULL,
	[phone]			NVARCHAR(50) NULL,
	[default]       CHAR(1)	     NULL DEFAULT 1,
	[status]        CHAR(1)	     NULL DEFAULT 1,
	[modified_date] DATETIME     NULL,
	[created_date]  DATETIME     NULL DEFAULT GETDATE()
)

ALTER TABLE [PersonPhone] ADD CONSTRAINT [FK_PersonPhone_id_id] FOREIGN KEY([id])
REFERENCES Person([id])
GO

CREATE TABLE [PersonPersonAddress] 
(
	[id]			INT          NOT NULL,	
	[idAddress]	    INT          NOT NULL,
	[default]       CHAR(1)	     NULL DEFAULT 1,
	[status]		CHAR(1)	     NULL DEFAULT 1,
	[modified_date] DATETIME     NULL,
	[created_date]  DATETIME     NULL DEFAULT GETDATE()
)

ALTER TABLE [PersonPersonAddress] ADD CONSTRAINT [FK_PersonPersonAddress_id_id] FOREIGN KEY([id])
REFERENCES Person([id])
GO

CREATE TABLE [PersonAddress]
(
	[idAddress]     INT          NOT NULL,
	[address1]		VARCHAR(50)  NULL,
	[address2]		VARCHAR(50)  NULL,
	[city]  		VARCHAR(50)  NULL,
	[state]  		VARCHAR(50)  NULL,
	[country]  		VARCHAR(50)  NULL,	
	[status]        CHAR(1)	     NULL DEFAULT 1,
	[modified_date] DATETIME     NULL,
	[created_date]  DATETIME     NULL DEFAULT GETDATE()
	CONSTRAINT [PK_PersonAddress_idAddress] PRIMARY KEY CLUSTERED 
	(
		[idAddress]
	) ON [PRIMARY]
)

ALTER TABLE [PersonPersonAddress] ADD CONSTRAINT [FK_PersonPersonAddress_idAddress_idAddress] FOREIGN KEY([idAddress])
REFERENCES PersonAddress([idAddress])
GO


