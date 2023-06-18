
  CREATE TABLE [dbo].[UserRegistration](  
        [ID] [int] IDENTITY(1,1) NOT NULL,  
        [Name] [nvarchar](50) NULL,  
        [Email] [nvarchar](50) NULL,  
        [PhoneNumber] [nvarchar](50) NULL,  
        [Password] [nvarchar](50) NULL,  
        [Created] [datetime] NULL,  
     CONSTRAINT [PK_UserRegistration] PRIMARY KEY CLUSTERED   
    (  
        [ID] ASC  
    )WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]  
    ) ON [PRIMARY]  
      
    GO  
      
    CREATE procedure [dbo].[spRegister]  
    (  
    @Name nvarchar(50),  
    @Email nvarchar(50),  
    @PhoneNumber nvarchar(50),  
    @Password nvarchar(50),  
    @Created datetime  
    )  
    as  
    begin  
    insert into [dbo].[UserRegistration](Name,Email,PhoneNumber,Password,Created)  
    values(@Name,@Email,@PhoneNumber,@Password,GETDATE())  
    end  


	CREATE procedure [dbo].[spLogin]  
    (  
    @Email nvarchar(50),  
    @Password nvarchar(50)  
    )  
    as  
    begin  
    Select COUNT(*) from UserRegistration where Email=@Email and Password=@Password   
    end 