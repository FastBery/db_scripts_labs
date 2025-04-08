CREATE TABLE Employee_test (
    Id INT IDENTITY(1,1) PRIMARY KEY,  
    Job_name NVARCHAR(100) NOT NULL,     
    Experience INT NULL,                    
    Salary DECIMAL(10,2) NOT NULL,      
    Test_date DATETIME DEFAULT GETDATE(),  
    Education BIT DEFAULT 0                
);

