CREATE PROCEDURE CRUDRegistration
@Action NVARCHAR(10),
@RegistrationID INT,
@FirstName VARCHAR(50),
@LastName VARCHAR(50),
@DateOfBirth DATE,
@Age INT,
@Gender VARCHAR(10),
@PhoneNumber VARCHAR(15),
@EmailAddress VARCHAR(100),
@Address VARCHAR(255),
@State VARCHAR(50),
@City VARCHAR(50),
@Username VARCHAR(50),
@PasswordHash VARCHAR(255)
AS
BEGIN
IF @Action = 'CREATE'
BEGIN
INSERT INTO Registration (FirstName, LastName, DateOfBirth, Age, Gender, PhoneNumber, EmailAddress, Address, State, City, Username, PasswordHash)
VALUES (@FirstName, @LastName, @DateOfBirth, @Age, @Gender, @PhoneNumber, @EmailAddress, @Address, @State, @City, @Username, @PasswordHash);
END
ELSE IF @Action = 'READ'
BEGIN
SELECT * FROM Registration WHERE RegistrationID = @RegistrationID;
END
ELSE IF @Action = 'UPDATE'
BEGIN
UPDATE Registration
SET FirstName = @FirstName,
LastName = @LastName,
DateOfBirth = @DateOfBirth,
Age = @Age,
Gender = @Gender,
PhoneNumber = @PhoneNumber,
EmailAddress = @EmailAddress,
Address = @Address,
State = @State,
City = @City,
Username = @Username,
PasswordHash = @PasswordHash
WHERE RegistrationID = @RegistrationID;
END
ELSE IF @Action = 'DELETE'
BEGIN
DELETE FROM Registration WHERE RegistrationID = @RegistrationID;
END
END;
