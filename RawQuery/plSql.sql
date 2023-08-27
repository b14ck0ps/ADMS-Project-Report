-- To insert data into Player and Player_Address tables
CREATE OR REPLACE PROCEDURE Insert_Player_Data (
    p_Ign VARCHAR2,
    p_Name VARCHAR2,
    p_Email VARCHAR2,
    p_Password VARCHAR2,
    p_Picture VARCHAR2,
    p_JoinDate DATE,
    p_Salary DECIMAL,
    p_Play_Hours INT,
    p_DOB DATE,
    p_Country VARCHAR2,
    p_City VARCHAR2,
    p_Street VARCHAR2,
    p_Zip_Code VARCHAR2
)
IS
    v_Player_ID INT;
BEGIN
    -- Insert data into Player table
    INSERT INTO Player (Player_ID, Player_Ign, Player_Name, Player_Email, Player_Password, Player_Picture, Player_JoinDate, Player_Salary, Player_Play_Hours, Player_DOB)
    VALUES (SEQ_PLAYER_ID.nextval, p_Ign, p_Name, p_Email, p_Password, p_Picture, p_JoinDate, p_Salary, p_Play_Hours, p_DOB);

    -- Get the last inserted Player_ID
    SELECT MAX(Player_ID) INTO v_Player_ID FROM Player;

    -- Insert data into Player_Address table
    INSERT INTO Player_Address (Pa_ID, Player_ID, Player_Country, Player_City, Player_Street, Player_Zip_Code)
    VALUES (SEQ_CCA_ID.nextval, v_Player_ID, p_Country, p_City, p_Street, p_Zip_Code);

    COMMIT;

    DBMS_OUTPUT.PUT_LINE('Data inserted successfully.');
EXCEPTION
    WHEN OTHERS THEN
        ROLLBACK;
        DBMS_OUTPUT.PUT_LINE('Error inserting data: ' || SQLERRM);
END;
/


-- To update data in Player and Player_Address tables
CREATE OR REPLACE PROCEDURE Update_Player_Data (
    p_Player_ID INT,
    p_Name VARCHAR2,
    p_Play_Hours INT,
    p_DOB DATE,
    p_City VARCHAR2,
    p_Street VARCHAR2,
    p_Zip_Code VARCHAR2
)
IS
BEGIN
    -- Update data in Player table
    UPDATE Player
    SET Player_Name = p_Name,
        Player_Play_Hours = p_Play_Hours,
        Player_DOB = p_DOB
    WHERE Player_ID = p_Player_ID;

    -- Update data in Player_Address table
    UPDATE Player_Address
    SET Player_City = p_City,
        Player_Street = p_Street,
        Player_Zip_Code = p_Zip_Code
    WHERE Player_ID = p_Player_ID;

    COMMIT;

    DBMS_OUTPUT.PUT_LINE('Data updated successfully.');
EXCEPTION
    WHEN OTHERS THEN
        ROLLBACK;
        DBMS_OUTPUT.PUT_LINE('Error updating data: ' || SQLERRM);
END;
/
