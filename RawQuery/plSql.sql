
-------------------- procedures --------------------

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



-- To insert data into Team and Team_Address tables
CREATE OR REPLACE PROCEDURE update_team_name(
    p_team_id INT,
    p_new_name VARCHAR2
) IS
BEGIN
    UPDATE Team
    SET Team_Name = p_new_name
    WHERE Team_ID = p_team_id;
    COMMIT;
END;
/


------------------- functions -------------------

--Calculate Age Function
CREATE OR REPLACE FUNCTION calculate_age(birth_date DATE) RETURN NUMBER IS
    age NUMBER;
BEGIN
    age := TRUNC(MONTHS_BETWEEN(SYSDATE, birth_date) / 12);
    RETURN age;
END;
/


--Get Team Member Count Function
CREATE OR REPLACE FUNCTION get_team_member_count(team_id INT) RETURN INT IS
    member_count INT;
BEGIN
    SELECT COUNT(*) INTO member_count
    FROM Player_Team
    WHERE Team_ID = team_id;
    RETURN member_count;
END;
/

--Get Total Earnings Function
CREATE OR REPLACE FUNCTION get_total_earnings(player_id INT) RETURN DECIMAL IS
    total_earnings DECIMAL(10, 2);
BEGIN
    SELECT SUM(Player_Winning) INTO total_earnings
    FROM Player_Winning
    WHERE Player_ID = player_id;
    RETURN total_earnings;
END;
/

------------------- Record -------------------
--Player Record Type
DECLARE
    TYPE player_rec IS RECORD (
        player_id INT,
        player_name VARCHAR2(100),
        player_email VARCHAR2(100)
    );
    p_info player_rec;
BEGIN
    SELECT Player_ID, Player_Name, Player_Email
    INTO p_info
    FROM Player
    WHERE Player_ID = 1;
    DBMS_OUTPUT.PUT_LINE('Player ID: ' || p_info.player_id);
    DBMS_OUTPUT.PUT_LINE('Player Name: ' || p_info.player_name);
    DBMS_OUTPUT.PUT_LINE('Player Email: ' || p_info.player_email);
END;
/

--Team Record Type
DECLARE
    TYPE team_rec IS RECORD (
        team_id INT,
        team_name VARCHAR2(100),
        team_country VARCHAR2(100)
    );
    t_info team_rec;
BEGIN
    SELECT Team_ID, Team_Name, Team_Country
    INTO t_info
    FROM Team
    WHERE Team_ID = 1;
    DBMS_OUTPUT.PUT_LINE('Team ID: ' || t_info.team_id);
    DBMS_OUTPUT.PUT_LINE('Team Name: ' || t_info.team_name);
    DBMS_OUTPUT.PUT_LINE('Team Country: ' || t_info.team_country);
END;
/

--Tournament Record Type
DECLARE
    TYPE tournament_rec IS RECORD (
        tournament_id INT,
        tournament_name VARCHAR2(100),
        prize_pool DECIMAL(10, 2)
    );
    t_info tournament_rec;
BEGIN
    SELECT Tournament_ID, Tournament_Name, Tournament_Prize_Pool
    INTO t_info
    FROM Tournament
    WHERE Tournament_ID = 1;
    DBMS_OUTPUT.PUT_LINE('Tournament ID: ' || t_info.tournament_id);
    DBMS_OUTPUT.PUT_LINE('Tournament Name: ' || t_info.tournament_name);
    DBMS_OUTPUT.PUT_LINE('Prize Pool: ' || t_info.prize_pool);
END;
/

------------------- Cursor -------------------
-- Players Cursor
DECLARE
    CURSOR player_cursor IS
    SELECT Player_ID, Player_Name, Player_Email
    FROM Player;
    p_info player_cursor%ROWTYPE;
BEGIN
    OPEN player_cursor;
    LOOP
        FETCH player_cursor INTO p_info;
        EXIT WHEN player_cursor%NOTFOUND;
        DBMS_OUTPUT.PUT_LINE('Player ID: ' || p_info.Player_ID);
        DBMS_OUTPUT.PUT_LINE('Player Name: ' || p_info.Player_Name);
        DBMS_OUTPUT.PUT_LINE('Player Email: ' || p_info.Player_Email);
    END LOOP;
    CLOSE player_cursor;
END;
/

-- retrieve the names and emails of all administrators 
DECLARE
    CURSOR admin_cursor IS
    SELECT Admin_Name, Admin_Email
    FROM Admin;
    
    admin_rec admin_cursor%ROWTYPE;
BEGIN
    OPEN admin_cursor;
    LOOP
        FETCH admin_cursor INTO admin_rec;
        EXIT WHEN admin_cursor%NOTFOUND;
        DBMS_OUTPUT.PUT_LINE('Admin Name: ' || admin_rec.Admin_Name);
        DBMS_OUTPUT.PUT_LINE('Admin Email: ' || admin_rec.Admin_Email);
    END LOOP;
    CLOSE admin_cursor;
END;
/

--Organization Finance Cursor
DECLARE
    CURSOR finance_cursor IS
    SELECT o.Organization_Name, f.Finance_Balance
    FROM Organization o
    JOIN Finance f ON o.Finance_ID = f.Finance_ID;
    fin_info finance_cursor%ROWTYPE;
BEGIN
    OPEN finance_cursor;
    LOOP
        FETCH finance_cursor INTO fin_info;
        EXIT WHEN finance_cursor%NOTFOUND;
        DBMS_OUTPUT.PUT_LINE('Organization Name: ' || fin_info.Organization_Name);
        DBMS_OUTPUT.PUT_LINE('Finance Balance: ' || fin_info.Finance_Balance);
    END LOOP;
    CLOSE finance_cursor;
END;
/


------------------- Trigger -------------------

--Player Salary Update Trigger
CREATE OR REPLACE TRIGGER player_salary_update
BEFORE UPDATE ON Player
FOR EACH ROW
BEGIN
    IF :NEW.Player_Salary < :OLD.Player_Salary THEN
        RAISE_APPLICATION_ERROR(-20001, 'Salary decrease not allowed.');
    END IF;
END;
/


--Tournament Prize Pool Trigger
CREATE OR REPLACE TRIGGER tournament_prize_pool_trigger
BEFORE INSERT ON Tournament
FOR EACH ROW
BEGIN
    IF :NEW.Tournament_Prize_Pool <= 0 THEN
        :NEW.Tournament_Prize_Pool := NULL;
    END IF;
END;
/

--Team Member Limit Trigger
CREATE OR REPLACE TRIGGER team_member_limit_trigger
BEFORE INSERT ON Player_Team
FOR EACH ROW
DECLARE
    team_size INT;
BEGIN
    SELECT COUNT(*) INTO team_size
    FROM Player_Team
    WHERE Team_ID = :NEW.Team_ID;
    
    IF team_size >= 5 THEN
        RAISE_APPLICATION_ERROR(-20002, 'Team member limit reached.');
    END IF;
END;
/

------------------- Package -------------------
--Player Management Package
CREATE OR REPLACE PACKAGE player_management_pkg AS
    PROCEDURE add_new_player(
        p_name VARCHAR2,
        p_email VARCHAR2,
        p_dob DATE,
        p_salary DECIMAL
    );
    
    PROCEDURE update_player_salary(
        p_player_id INT,
        p_new_salary DECIMAL
    );
    
    FUNCTION get_player_age(
        p_player_id INT
    ) RETURN INT;
    
    FUNCTION get_player_total_earnings(
        p_player_id INT
    ) RETURN DECIMAL;
    
    PROCEDURE remove_player(
        p_player_id INT
    );
END player_management_pkg;
/

--Team Management Package
CREATE OR REPLACE PACKAGE team_management_pkg AS
    PROCEDURE update_team_name(
        p_team_id INT,
        p_new_name VARCHAR2
    );
    
    PROCEDURE add_player_to_team(
        p_player_id INT,
        p_team_id INT
    );
    
    FUNCTION get_team_member_count(
        p_team_id INT
    ) RETURN INT;
    
    PROCEDURE remove_player_from_team(
        p_player_id INT,
        p_team_id INT
    );
    
    FUNCTION get_team_players(
        p_team_id INT
    ) RETURN SYS_REFCURSOR;
END team_management_pkg;
/


--Tournament Management Package
CREATE OR REPLACE PACKAGE tournament_management_pkg AS
    PROCEDURE create_new_tournament(
        p_name VARCHAR2,
        p_start_date DATE,
        p_end_date DATE,
        p_location VARCHAR2,
        p_prize_pool DECIMAL
    );
    
    PROCEDURE delete_tournament(
        p_tournament_id INT
    );
    
    FUNCTION get_tournament_prize_pool(
        p_tournament_id INT
    ) RETURN DECIMAL;
    
    FUNCTION get_tournament_winner(
        p_tournament_id INT
    ) RETURN VARCHAR2;
    
    PROCEDURE update_tournament_location(
        p_tournament_id INT,
        p_new_location VARCHAR2
    );
END tournament_management_pkg;
/
