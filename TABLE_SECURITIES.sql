USE FOO
GO
--Version 1.0
CREATE TABLE SECURITIES (
	SECURITY_ID		  BIGINT NOT NULL,
	SECURITY_DESC	  VARCHAR(50) NULL,
	SECURITY_TYPE_CD  VARCHAR(10) NULL,
	CONSTRAINT PK_SECURITIES PRIMARY KEY(SECURITY_ID)
)
GO

--Version 1.1  20160305 Paul Charron
ALTER TABLE SECURITIES
ADD CONSTRAINT FK_SECURITY_TYPE FOREIGN KEY (SECURITY_TYPE_CD)
REFERENCES SECURITY_TYPE(SECURITY_TYPE_CD)

GO