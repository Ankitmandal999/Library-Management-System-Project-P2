--Inserting data in tables

--Importing data in members table
BULK INSERT members
FROM 'E:\Learning\SQL Projects\Library-System-Management---P2\members.csv'
WITH (
    FORMAT = 'CSV',
    FIRSTROW = 2,              -- Skip header row (if present)
    FIELDTERMINATOR = ',',     -- Delimiter
    ROWTERMINATOR = '\n',      -- Row end
    TABLOCK
)

--Importing data in branch table
BULK INSERT branch
FROM 'E:\Learning\SQL Projects\Library-System-Management---P2\branch.csv'
WITH (
    FORMAT = 'CSV',
    FIRSTROW = 2,              -- Skip header row (if present)
    FIELDTERMINATOR = ',',     -- Delimiter
    ROWTERMINATOR = '\n',      -- Row end
    TABLOCK
)

--Importing data in books table
BULK INSERT books
FROM 'E:\Learning\SQL Projects\Library-System-Management---P2\books.csv'
WITH (
    FORMAT = 'CSV',
    FIRSTROW = 2,              -- Skip header row (if present)
    FIELDTERMINATOR = ',',     -- Delimiter
    ROWTERMINATOR = '\n',      -- Row end
    TABLOCK
) 

--Importing data in employees table
BULK INSERT employees
FROM 'E:\Learning\SQL Projects\Library-System-Management---P2\employees.csv'
WITH (
    FORMAT = 'CSV',
    FIRSTROW = 2,              -- Skip header row (if present)
    FIELDTERMINATOR = ',',     -- Delimiter
    ROWTERMINATOR = '\n',      -- Row end
    CODEPAGE = '65001', 
	TABLOCK
)

--Importing data in issue_status table
BULK INSERT issued_status
FROM 'E:\Learning\SQL Projects\Library-System-Management---P2\issued_status.csv'
WITH (
    FORMAT = 'CSV',
    FIRSTROW = 2,              -- Skip header row (if present)
    FIELDTERMINATOR = ',',     -- Delimiter
    ROWTERMINATOR = '\n',      -- Row end 
	TABLOCK
)

--Importing data in return_status table
BULK INSERT return_status
FROM 'E:\Learning\SQL Projects\Library-System-Management---P2\return_status.csv'
WITH (
    FORMAT = 'CSV',
    FIRSTROW = 2,              -- Skip header row (if present)
    FIELDTERMINATOR = ',',     -- Delimiter
    ROWTERMINATOR = '\n',      -- Row end 
	TABLOCK
)
