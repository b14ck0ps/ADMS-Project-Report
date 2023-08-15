-- Create Admin table
CREATE TABLE Admin (
    Admin_ID INT PRIMARY KEY,
    Admin_Name VARCHAR(100),
    Admin_Email VARCHAR(100),
    Admin_Password VARCHAR(100),
    Admin_Picture VARCHAR(100)
);

--Create Manager table
CREATE TABLE Manager (
    Manager_ID INT PRIMARY KEY,
    Manager_Name VARCHAR(100),
    Manager_Email VARCHAR(100),
    Manager_Password VARCHAR(100),
    Manager_Picture VARCHAR(100),
    Manager_Hiredate DATE,
    Admin_ID INT,
    FOREIGN KEY (Admin_id) REFERENCES Admin (Admin_ID)
);

-- Create Manager Phone table
CREATE TABLE Manager_Phone (
    Mp_ID INT PRIMARY KEY,
    Manager_ID INT,
    Manager_Phone VARCHAR(20),
    FOREIGN KEY (Manager_ID) REFERENCES Manager (Manager_ID)
);

-- Create Finance table
CREATE TABLE Finance (
    Finance_ID INT PRIMARY KEY,
    Finance_Account_Number VARCHAR(100),
    Finance_Balance DECIMAL(10, 2),
    Manager_ID INT,
    FOREIGN KEY (Manager_ID) REFERENCES Manager (Manager_ID)
);

-- Create Team table
CREATE TABLE Team (
    Team_ID INT PRIMARY KEY,
    Team_Name VARCHAR(100),
    Team_Icon VARCHAR(100),
    Team_Established_Date DATE,
    Team_Country VARCHAR(100),
    Total_Price_Money DECIMAL(10, 2),
    Manager_ID INT,
    FOREIGN KEY (Manager_ID) REFERENCES Manager (Manager_ID)
);

-- Create Team Winning table
CREATE TABLE Team_Winning (
    Tw_ID INT PRIMARY KEY,
    Team_ID INT,
    Team_Winning VARCHAR(100),
    FOREIGN KEY (Team_ID) REFERENCES Team (Team_ID)
);

-- Create SocialMedia table
CREATE TABLE SocialMedia (
    SocialMedia_ID INT PRIMARY KEY,
    SocialMedia_Name VARCHAR(100),
    SocialMedia_Email VARCHAR(100),
    SocialMedia_Password VARCHAR(100),
    SocialMedia_Picture VARCHAR(100),
    SocialMedia_Hiredate DATE,
    SocialMedia_Salary DECIMAL(10, 2),
    Manager_ID INT,
    FOREIGN KEY (Manager_ID) REFERENCES Manager (Manager_ID)
);

-- Create ContentCreator table
CREATE TABLE ContentCreator (
    ContentCreator_ID INT PRIMARY KEY,
    ContentCreator_Name VARCHAR(100),
    ContentCreator_Email VARCHAR(100),
    ContentCreator_Password VARCHAR(100),
    ContentCreator_Picture VARCHAR(100),
    ContentCreator_Hiredate DATE,
    ContentCreator_Salary DECIMAL(10, 2),
    SocialMedia_ID INT,
    FOREIGN KEY (SocialMedia_ID) REFERENCES SocialMedia (SocialMedia_ID)
);

-- Create ContentCreator SocialMedia table
CREATE TABLE ContentCreator_SocialMedia (
    Ccs_ID INT PRIMARY KEY,
    ContentCreator_ID INT,
    ContentCreator_Facebook_Link VARCHAR(100),
    ContentCreator_Twitter_Link VARCHAR(100),
    ContentCreator_Instagram_Link VARCHAR(100),
    ContentCreator_Youtube_Link VARCHAR(100),
    FOREIGN KEY (ContentCreator_ID) REFERENCES ContentCreator (ContentCreator_ID)
);

-- Create ContentCreator Address table
CREATE TABLE ContentCreator_Address (
    Cca_ID INT PRIMARY KEY,
    ContentCreator_ID INT,
    ContentCreator_Country VARCHAR(100),
    ContentCreator_City VARCHAR(100),
    ContentCreator_Street VARCHAR(100),
    ContentCreator_Zip_Code VARCHAR(20),
    FOREIGN KEY (ContentCreator_ID) REFERENCES ContentCreator (ContentCreator_ID)
);

-- Create ContentCreator Phone table
CREATE TABLE ContentCreator_Phone (
    Ccp_ID INT PRIMARY KEY,
    ContentCreator_ID INT,
    ContentCreator_Phone VARCHAR(20),
    FOREIGN KEY (ContentCreator_ID) REFERENCES ContentCreator (ContentCreator_ID)
);

-- Create SocialMedia Phone table
CREATE TABLE SocialMedia_Phone (
    Smp_ID INT PRIMARY KEY,
    SocialMedia_ID INT,
    SocialMedia_Phone VARCHAR(20),
    FOREIGN KEY (SocialMedia_ID) REFERENCES SocialMedia (SocialMedia_ID)
);

-- Create Organization table
CREATE TABLE Organization (
    Organization_ID INT PRIMARY KEY,
    Organization_Name VARCHAR(100),
    Organization_Email VARCHAR(100),
    Organization_Password VARCHAR(100),
    Organization_Picture VARCHAR(100),
    Organization_Phone VARCHAR(20),
    Finance_ID INT,
    FOREIGN KEY (Finance_ID) REFERENCES Finance (Finance_ID)
);

-- Create Organization Phone table
CREATE TABLE Organization_Phone (
    Op_ID INT PRIMARY KEY,
    Organization_ID INT,
    Organization_Phone VARCHAR(20),
    FOREIGN KEY (Organization_ID) REFERENCES Organization (Organization_ID)
);

-- Create Player table
CREATE TABLE Player (
    Player_ID INT PRIMARY KEY,
    Player_Name VARCHAR(100),
    Player_Email VARCHAR(100),
    Player_Password VARCHAR(100),
    Player_Picture VARCHAR(100),
    Player_JoinDate DATE,
    Player_Salary DECIMAL(10, 2),
    Player_Play_Hours INT,
    Player_DOB DATE
);

-- Create Player Address table
CREATE TABLE Player_Address (
    Pa_ID INT PRIMARY KEY,
    Player_ID INT,
    Player_Country VARCHAR(100),
    Player_City VARCHAR(100),
    Player_Street VARCHAR(100),
    Player_Zip_Code VARCHAR(20),
    FOREIGN KEY (Player_ID) REFERENCES Player (Player_ID)
);

-- Create Player Social Link table
CREATE TABLE Player_Social_Link (
    Psl_ID INT PRIMARY KEY,
    Player_ID INT,
    Player_Facebook_Link VARCHAR(100),
    Player_Instagram_Link VARCHAR(100),
    Player_Twitter_Link VARCHAR(100),
    Player_Youtube_Link VARCHAR(100),
    FOREIGN KEY (Player_ID) REFERENCES Player (Player_ID)
);

-- Create Player Phone table
CREATE TABLE Player_Phone (
    Pp_ID INT PRIMARY KEY,
    Player_ID INT,
    Player_Phone VARCHAR(20),
    FOREIGN KEY (Player_ID) REFERENCES Player (Player_ID)
);

-- Create Player Winning table
CREATE TABLE Player_Winning (
    Pw_ID INT PRIMARY KEY,
    Player_ID INT,
    Player_Winning VARCHAR(100),
    FOREIGN KEY (Player_ID) REFERENCES Player (Player_ID)
);

-- Create Player Team table
CREATE TABLE Player_Team (
    Pt_ID INT PRIMARY KEY,
    Player_ID INT,
    Team_ID INT,
    FOREIGN KEY (Player_ID) REFERENCES Player (Player_ID),
    FOREIGN KEY (Team_ID) REFERENCES Team (Team_ID)
);

-- Create Tournament table
CREATE TABLE Tournament (
    Tournament_ID INT PRIMARY KEY,
    Tournament_Name VARCHAR(100),
    Tournament_StartingDate DATE,
    Tournament_EndingDate DATE,
    Tournament_Location VARCHAR(100),
    Tournament_Prize_Pool DECIMAL(10, 2),
    Organization_ID INT,
    FOREIGN KEY (Organization_ID) REFERENCES Organization (Organization_ID)
);
-- Create Record table
CREATE TABLE Record (
    Record_ID INT PRIMARY KEY,
    Record_Date DATE,
    Record_Price_Pool DECIMAL(10, 2),
    Tournament_ID INT,
    FOREIGN KEY (Tournament_ID) REFERENCES Tournament (Tournament_ID)
);



-- Create Game table
CREATE TABLE Game (
    Game_ID INT PRIMARY KEY,
    Game_Name VARCHAR(100),
    Game_Icon VARCHAR(100),
    Game_ReleaseDate DATE,
    Game_Platform VARCHAR(100),
    Game_Price_Pool DECIMAL(10, 2),
    Game_Genre VARCHAR(100),
    Game_Publisher VARCHAR(100)
);

-- Create Tournament Game table
CREATE TABLE Tournament_Game (
    Tournament_ID INT,
    Game_ID INT,
    PRIMARY KEY (Tournament_ID, Game_ID),
    FOREIGN KEY (Tournament_ID) REFERENCES Tournament (Tournament_ID),
    FOREIGN KEY (Game_ID) REFERENCES Game (Game_ID)
);

-- Create Organization Tournament table
CREATE TABLE Organization_Tournament (
    Organization_ID INT,
    Tournament_ID INT,
    PRIMARY KEY (Organization_ID, Tournament_ID),
    FOREIGN KEY (Organization_ID) REFERENCES Organization (Organization_ID),
    FOREIGN KEY (Tournament_ID) REFERENCES Tournament (Tournament_ID)
);

-- Create Team Game table
CREATE TABLE Team_Game (
    Team_ID INT,
    Game_ID INT,
    PRIMARY KEY (Team_ID, Game_ID),
    FOREIGN KEY (Team_ID) REFERENCES Team (Team_ID),
    FOREIGN KEY (Game_ID) REFERENCES Game (Game_ID)
);

-- Create Company table
CREATE TABLE Company (
    Company_ID INT PRIMARY KEY,
    Company_Name VARCHAR(100),
    Company_Email VARCHAR(100),
    Company_Picture VARCHAR(100),
    Company_Phone VARCHAR(20),
    Company_Location VARCHAR(100)
);

-- Create Company Phone table
CREATE TABLE Company_Phone (
    Company_ID INT,
    Company_Phone VARCHAR(20),
    PRIMARY KEY (Company_ID, Company_Phone),
    FOREIGN KEY (Company_ID) REFERENCES Company (Company_ID)
);

-- Create Organization Company table
CREATE TABLE Organization_Company (
    Organization_ID INT,
    Company_ID INT,
    PRIMARY KEY (Organization_ID, Company_ID),
    FOREIGN KEY (Organization_ID) REFERENCES Organization (Organization_ID),
    FOREIGN KEY (Company_ID) REFERENCES Company (Company_ID)
);

-- Create Team Company table
CREATE TABLE Team_Company (
    Team_ID INT,
    Company_ID INT,
    PRIMARY KEY (Team_ID, Company_ID),
    FOREIGN KEY (Team_ID) REFERENCES Team (Team_ID),
    FOREIGN KEY (Company_ID) REFERENCES Company (Company_ID)
);
