

ALTER TABLE dbo.Book_Loans
ALTER COLUMN DateOut date NOT NULL

ALTER TABLE dbo.Book_Loans
ALTER COLUMN DueDate date NOT NULL

ALTER TABLE dbo.Library_Branch
ALTER COLUMN BranchName VARCHAR (MAX) NULL

