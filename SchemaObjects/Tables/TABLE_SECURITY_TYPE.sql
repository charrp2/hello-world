USE FOO
GO
-- Version 1
--20160305 Paul Charron

CREATE TABLE SECURITY_TYPE (
  SECURITY_TYPE_CD     VARCHAR(10) NOT NULL,
  SECURITY_TYPE_DESC   VARCHAR(50) NULL,
  LAST_UPDATED         DATETIME2(7) NOT NULL,
  CONSTRAINT DF_LAST_UPDATED DEFAULT GETDATE() FOR LAST_UPDATED,
  CONSTRAINT PK_SECURITY_TYPE PRIMARY KEY(SECURITY_TYPE_CD)
)
