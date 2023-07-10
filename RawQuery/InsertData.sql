INSERT INTO Admin (Admin_ID, Admin_Name, Admin_Email, Admin_Password, Admin_Picture)
VALUES (seq_admin_id.NEXTVAL, 'Admin 1', 'admin1@example.com', 'adminpass1', 'admin1.jpg');

INSERT INTO Admin (Admin_ID, Admin_Name, Admin_Email, Admin_Password, Admin_Picture)
VALUES (seq_admin_id.NEXTVAL, 'Admin 2', 'admin2@example.com', 'adminpass2', 'admin2.jpg');

INSERT INTO Admin (Admin_ID, Admin_Name, Admin_Email, Admin_Password, Admin_Picture)
VALUES (seq_admin_id.NEXTVAL, 'Admin 3', 'admin3@example.com', 'adminpass3', 'admin3.jpg');

INSERT INTO Admin (Admin_ID, Admin_Name, Admin_Email, Admin_Password, Admin_Picture)
VALUES (seq_admin_id.NEXTVAL, 'Admin 4', 'admin4@example.com', 'adminpass4', 'admin4.jpg');

INSERT INTO Admin (Admin_ID, Admin_Name, Admin_Email, Admin_Password, Admin_Picture)
VALUES (seq_admin_id.NEXTVAL, 'Admin 5', 'admin5@example.com', 'adminpass5', 'admin5.jpg');


INSERT INTO Manager (Manager_ID, Manager_Name, Manager_Email, Manager_Password, Manager_Picture, Manager_Hiredate, Admin_ID)
VALUES (seq_manager_id.NEXTVAL, 'John Doe', 'john.doe@example.com', 'password123', 'profile.jpg', TO_DATE('2022-01-01', 'YYYY-MM-DD'), 1);

INSERT INTO Manager (Manager_ID, Manager_Name, Manager_Email, Manager_Password, Manager_Picture, Manager_Hiredate, Admin_ID)
VALUES (seq_manager_id.NEXTVAL, 'Jane Smith', 'jane.smith@example.com', 'password456', 'profile2.jpg', TO_DATE('2022-02-01', 'YYYY-MM-DD'), 2);

INSERT INTO Manager (Manager_ID, Manager_Name, Manager_Email, Manager_Password, Manager_Picture, Manager_Hiredate, Admin_ID)
VALUES (seq_manager_id.NEXTVAL, 'Mike Johnson', 'mike.johnson@example.com', 'password789', 'profile3.jpg', TO_DATE('2022-03-01', 'YYYY-MM-DD'), 1);

INSERT INTO Manager (Manager_ID, Manager_Name, Manager_Email, Manager_Password, Manager_Picture, Manager_Hiredate, Admin_ID)
VALUES (seq_manager_id.NEXTVAL, 'Sarah Williams', 'sarah.williams@example.com', 'password123', 'profile4.jpg', TO_DATE('2022-04-01', 'YYYY-MM-DD'), 2);

INSERT INTO Manager (Manager_ID, Manager_Name, Manager_Email, Manager_Password, Manager_Picture, Manager_Hiredate, Admin_ID)
VALUES (seq_manager_id.NEXTVAL, 'Robert Davis', 'robert.davis@example.com', 'password456', 'profile5.jpg', TO_DATE('2022-05-01', 'YYYY-MM-DD'), 1);



INSERT INTO Manager_Phone (Mp_ID, Manager_ID, Manager_Phone)
VALUES (seq_mp_id.NEXTVAL, 1, '1234567890');

INSERT INTO Manager_Phone (Mp_ID, Manager_ID, Manager_Phone)
VALUES (seq_mp_id.NEXTVAL, 2, '0987654321');

INSERT INTO Manager_Phone (Mp_ID, Manager_ID, Manager_Phone)
VALUES (seq_mp_id.NEXTVAL, 3, '1112223333');

INSERT INTO Manager_Phone (Mp_ID, Manager_ID, Manager_Phone)
VALUES (seq_mp_id.NEXTVAL, 4, '4445556666');

INSERT INTO Manager_Phone (Mp_ID, Manager_ID, Manager_Phone)
VALUES (seq_mp_id.NEXTVAL, 5, '7778889999');



INSERT INTO Finance (Finance_ID, Finance_Account_Number, Finance_Balance, Manager_ID)
VALUES (seq_finance_id.NEXTVAL, 'ABC123456', 10000, 1);

INSERT INTO Finance (Finance_ID, Finance_Account_Number, Finance_Balance, Manager_ID)
VALUES (seq_finance_id.NEXTVAL, 'DEF789012', 20000, 2);

INSERT INTO Finance (Finance_ID, Finance_Account_Number, Finance_Balance, Manager_ID)
VALUES (seq_finance_id.NEXTVAL, 'GHI345678', 15000, 3);

INSERT INTO Finance (Finance_ID, Finance_Account_Number, Finance_Balance, Manager_ID)
VALUES (seq_finance_id.NEXTVAL, 'JKL901234', 18000, 4);

INSERT INTO Finance (Finance_ID, Finance_Account_Number, Finance_Balance, Manager_ID)
VALUES (seq_finance_id.NEXTVAL, 'MNO567890', 22000, 5);



INSERT INTO Team (Team_ID, Team_Name, Team_Icon, Team_Established_Date, Team_Country, Total_Price_Money, Manager_ID)
VALUES (seq_team_id.NEXTVAL, 'Team A', 'teamA.png', TO_DATE('2022-01-01', 'YYYY-MM-DD'), 'USA', 50000, 1);

INSERT INTO Team (Team_ID, Team_Name, Team_Icon, Team_Established_Date, Team_Country, Total_Price_Money, Manager_ID)
VALUES (seq_team_id.NEXTVAL, 'Team B', 'teamB.png', TO_DATE('2022-02-01', 'YYYY-MM-DD'), 'UK', 60000, 2);

INSERT INTO Team (Team_ID, Team_Name, Team_Icon, Team_Established_Date, Team_Country, Total_Price_Money, Manager_ID)
VALUES (seq_team_id.NEXTVAL, 'Team C', 'teamC.png', TO_DATE('2022-03-01', 'YYYY-MM-DD'), 'Australia', 45000, 3);

INSERT INTO Team (Team_ID, Team_Name, Team_Icon, Team_Established_Date, Team_Country, Total_Price_Money, Manager_ID)
VALUES (seq_team_id.NEXTVAL, 'Team D', 'teamD.png', TO_DATE('2022-04-01', 'YYYY-MM-DD'), 'Canada', 55000, 4);

INSERT INTO Team (Team_ID, Team_Name, Team_Icon, Team_Established_Date, Team_Country, Total_Price_Money, Manager_ID)
VALUES (seq_team_id.NEXTVAL, 'Team E', 'teamE.png', TO_DATE('2022-05-01', 'YYYY-MM-DD'), 'Germany', 70000, 5);



INSERT INTO Team_Winning (Tw_ID, Team_ID, Team_Winning)
VALUES (seq_tw_id.NEXTVAL, 1, 'Championship 2022');

INSERT INTO Team_Winning (Tw_ID, Team_ID, Team_Winning)
VALUES (seq_tw_id.NEXTVAL, 2, 'Tournament 2023');

INSERT INTO Team_Winning (Tw_ID, Team_ID, Team_Winning)
VALUES (seq_tw_id.NEXTVAL, 3, 'Cup 2022');

INSERT INTO Team_Winning (Tw_ID, Team_ID, Team_Winning)
VALUES (seq_tw_id.NEXTVAL, 4, 'League 2022');

INSERT INTO Team_Winning (Tw_ID, Team_ID, Team_Winning)
VALUES (seq_tw_id.NEXTVAL, 5, 'Championship 2023');



INSERT INTO SocialMedia (SocialMedia_ID, SocialMedia_Name, SocialMedia_Email, SocialMedia_Password, SocialMedia_Picture, SocialMedia_Hiredate, SocialMedia_Salary, MANAGER_ID)
VALUES (seq_socialmedia_id.NEXTVAL, 'SocialMediaUser221', 'social.user1@example.com', 'socialpass1', 'social1.jpg', TO_DATE('2022-01-01', 'YYYY-MM-DD'), 5000, 1);

INSERT INTO SocialMedia (SocialMedia_ID, SocialMedia_Name, SocialMedia_Email, SocialMedia_Password, SocialMedia_Picture, SocialMedia_Hiredate, SocialMedia_Salary, MANAGER_ID)
VALUES (seq_socialmedia_id.NEXTVAL, 'SocialMediaUser442', 'social.user2@example.com', 'socialpass2', 'social2.jpg', TO_DATE('2022-02-01', 'YYYY-MM-DD'), 6000, 2);

INSERT INTO SocialMedia (SocialMedia_ID, SocialMedia_Name, SocialMedia_Email, SocialMedia_Password, SocialMedia_Picture, SocialMedia_Hiredate, SocialMedia_Salary, MANAGER_ID)
VALUES (seq_socialmedia_id.NEXTVAL, 'SocialMediaUser423', 'social.user3@example.com', 'socialpass3', 'social3.jpg', TO_DATE('2022-03-01', 'YYYY-MM-DD'), 7000, 3);

INSERT INTO SocialMedia (SocialMedia_ID, SocialMedia_Name, SocialMedia_Email, SocialMedia_Password, SocialMedia_Picture, SocialMedia_Hiredate, SocialMedia_Salary, MANAGER_ID)
VALUES (seq_socialmedia_id.NEXTVAL, 'SocialMediaUser4234', 'social.user4@example.com', 'socialpass4', 'social4.jpg', TO_DATE('2022-04-01', 'YYYY-MM-DD'), 8000, 4);

INSERT INTO SocialMedia (SocialMedia_ID, SocialMedia_Name, SocialMedia_Email, SocialMedia_Password, SocialMedia_Picture, SocialMedia_Hiredate, SocialMedia_Salary, MANAGER_ID)
VALUES (seq_socialmedia_id.NEXTVAL, 'SocialMediaUser5523', 'social.user5@example.com', 'socialpass5', 'social5.jpg', TO_DATE('2022-05-01', 'YYYY-MM-DD'), 9000, 5);



INSERT INTO ContentCreator (ContentCreator_ID, ContentCreator_Name, ContentCreator_Email, ContentCreator_Password, ContentCreator_Picture, ContentCreator_Hiredate, ContentCreator_Salary, SOCIALMEDIA_ID)
VALUES (seq_contentcreator_id.NEXTVAL, 'ContentCreator 1', 'cc1@example.com', 'ccpass1', 'cc1.jpg', TO_DATE('2022-01-01', 'YYYY-MM-DD'), 3000, 1)

INSERT INTO ContentCreator (ContentCreator_ID, ContentCreator_Name, ContentCreator_Email, ContentCreator_Password, ContentCreator_Picture, ContentCreator_Hiredate, ContentCreator_Salary, SOCIALMEDIA_ID)
VALUES (seq_contentcreator_id.NEXTVAL, 'ContentCreator 2', 'cc2@example.com', 'ccpass2', 'cc2.jpg', TO_DATE('2022-02-01', 'YYYY-MM-DD'), 3500, 2)

INSERT INTO ContentCreator (ContentCreator_ID, ContentCreator_Name, ContentCreator_Email, ContentCreator_Password, ContentCreator_Picture, ContentCreator_Hiredate, ContentCreator_Salary, SOCIALMEDIA_ID)
VALUES (seq_contentcreator_id.NEXTVAL, 'ContentCreator 3', 'cc3@example.com', 'ccpass3', 'cc3.jpg', TO_DATE('2022-03-01', 'YYYY-MM-DD'), 4000, 3)

INSERT INTO ContentCreator (ContentCreator_ID, ContentCreator_Name, ContentCreator_Email, ContentCreator_Password, ContentCreator_Picture, ContentCreator_Hiredate, ContentCreator_Salary, SOCIALMEDIA_ID)
VALUES (seq_contentcreator_id.NEXTVAL, 'ContentCreator 4', 'cc4@example.com', 'ccpass4', 'cc4.jpg', TO_DATE('2022-04-01', 'YYYY-MM-DD'), 4500, 4)

INSERT INTO ContentCreator (ContentCreator_ID, ContentCreator_Name, ContentCreator_Email, ContentCreator_Password, ContentCreator_Picture, ContentCreator_Hiredate, ContentCreator_Salary, SOCIALMEDIA_ID)
VALUES (seq_contentcreator_id.NEXTVAL, 'ContentCreator 5', 'cc5@example.com', 'ccpass5', 'cc5.jpg', TO_DATE('2022-05-01', 'YYYY-MM-DD'), 5000, 5)



INSERT INTO ContentCreator_SocialMedia (Ccs_ID, ContentCreator_ID, ContentCreator_Facebook_Link, ContentCreator_Twitter_Link, ContentCreator_Instagram_Link, ContentCreator_Youtube_Link)
VALUES (seq_ccs_id.NEXTVAL, 1, 'https://facebook.com/cc1', 'https://twitter.com/cc1', 'https://instagram.com/cc1', 'https://youtube.com/cc1');

INSERT INTO ContentCreator_SocialMedia (Ccs_ID, ContentCreator_ID, ContentCreator_Facebook_Link, ContentCreator_Twitter_Link, ContentCreator_Instagram_Link, ContentCreator_Youtube_Link)
VALUES (seq_ccs_id.NEXTVAL, 2, 'https://facebook.com/cc2', 'https://twitter.com/cc2', 'https://instagram.com/cc2', 'https://youtube.com/cc2');

INSERT INTO ContentCreator_SocialMedia (Ccs_ID, ContentCreator_ID, ContentCreator_Facebook_Link, ContentCreator_Twitter_Link, ContentCreator_Instagram_Link, ContentCreator_Youtube_Link)
VALUES (seq_ccs_id.NEXTVAL, 3, 'https://facebook.com/cc3', 'https://twitter.com/cc3', 'https://instagram.com/cc3', 'https://youtube.com/cc3');

INSERT INTO ContentCreator_SocialMedia (Ccs_ID, ContentCreator_ID, ContentCreator_Facebook_Link, ContentCreator_Twitter_Link, ContentCreator_Instagram_Link, ContentCreator_Youtube_Link)
VALUES (seq_ccs_id.NEXTVAL, 4, 'https://facebook.com/cc4', 'https://twitter.com/cc4', 'https://instagram.com/cc4', 'https://youtube.com/cc4');

INSERT INTO ContentCreator_SocialMedia (Ccs_ID, ContentCreator_ID, ContentCreator_Facebook_Link, ContentCreator_Twitter_Link, ContentCreator_Instagram_Link, ContentCreator_Youtube_Link)
VALUES (seq_ccs_id.NEXTVAL, 5, 'https://facebook.com/cc5', 'https://twitter.com/cc5', 'https://instagram.com/cc5', 'https://youtube.com/cc5');



INSERT INTO ContentCreator_Address (Cca_ID, ContentCreator_ID, ContentCreator_Country, ContentCreator_City, ContentCreator_Street, ContentCreator_Zip_Code)
VALUES (seq_cca_id.NEXTVAL, 1, 'USA', 'New York', '123 Street', '10001');

INSERT INTO ContentCreator_Address (Cca_ID, ContentCreator_ID, ContentCreator_Country, ContentCreator_City, ContentCreator_Street, ContentCreator_Zip_Code)
VALUES (seq_cca_id.NEXTVAL, 2, 'USA', 'Los Angeles', '456 Avenue', '90001');

INSERT INTO ContentCreator_Address (Cca_ID, ContentCreator_ID, ContentCreator_Country, ContentCreator_City, ContentCreator_Street, ContentCreator_Zip_Code)
VALUES (seq_cca_id.NEXTVAL, 3, 'UK', 'London', '789 Road', 'SW1A 1AA');

INSERT INTO ContentCreator_Address (Cca_ID, ContentCreator_ID, ContentCreator_Country, ContentCreator_City, ContentCreator_Street, ContentCreator_Zip_Code)
VALUES (seq_cca_id.NEXTVAL, 4, 'Canada', 'Toronto', '321 Boulevard', 'M5V 2T3');

INSERT INTO ContentCreator_Address (Cca_ID, ContentCreator_ID, ContentCreator_Country, ContentCreator_City, ContentCreator_Street, ContentCreator_Zip_Code)
VALUES (seq_cca_id.NEXTVAL, 5, 'Germany', 'Berlin', '987 Strasse', '12345');



INSERT INTO ContentCreator_Phone (Ccp_ID, ContentCreator_ID, ContentCreator_Phone)
VALUES (seq_ccp_id.NEXTVAL, 1, '9876543210');

INSERT INTO ContentCreator_Phone (Ccp_ID, ContentCreator_ID, ContentCreator_Phone)
VALUES (seq_ccp_id.NEXTVAL, 2, '1234567890');

INSERT INTO ContentCreator_Phone (Ccp_ID, ContentCreator_ID, ContentCreator_Phone)
VALUES (seq_ccp_id.NEXTVAL, 3, '5551234567');

INSERT INTO ContentCreator_Phone (Ccp_ID, ContentCreator_ID, ContentCreator_Phone)
VALUES (seq_ccp_id.NEXTVAL, 4, '7775558888');

INSERT INTO ContentCreator_Phone (Ccp_ID, ContentCreator_ID, ContentCreator_Phone)
VALUES (seq_ccp_id.NEXTVAL, 5, '9990001111');



INSERT INTO SocialMedia_Phone (Smp_ID, SocialMedia_ID, SocialMedia_Phone)
VALUES (seq_smp_id.NEXTVAL, 1, '5551234567');

INSERT INTO SocialMedia_Phone (Smp_ID, SocialMedia_ID, SocialMedia_Phone)
VALUES (seq_smp_id.NEXTVAL, 2, '6669876543');

INSERT INTO SocialMedia_Phone (Smp_ID, SocialMedia_ID, SocialMedia_Phone)
VALUES (seq_smp_id.NEXTVAL, 3, '7774561230');

INSERT INTO SocialMedia_Phone (Smp_ID, SocialMedia_ID, SocialMedia_Phone)
VALUES (seq_smp_id.NEXTVAL, 4, '8887890123');

INSERT INTO SocialMedia_Phone (Smp_ID, SocialMedia_ID, SocialMedia_Phone)
VALUES (seq_smp_id.NEXTVAL, 5, '9996547890');



INSERT INTO Organization (Organization_ID, Organization_Name, Organization_Email, Organization_Password, Organization_Picture, Organization_Phone, Finance_ID)
VALUES (seq_organization_id.NEXTVAL, 'Organization XYZ', 'info@xyz.com', 'orgpass', 'org.jpg', '1234567890', 1);

INSERT INTO Organization (Organization_ID, Organization_Name,Organization_Email, Organization_Password, Organization_Picture, Organization_Phone, Finance_ID)
VALUES (seq_organization_id.NEXTVAL, 'Organization ABC', 'info@abc.com', 'orgpass', 'org2.jpg', '0987654321', 2);

INSERT INTO Organization (Organization_ID, Organization_Name, Organization_Email, Organization_Password, Organization_Picture, Organization_Phone, Finance_ID)
VALUES (seq_organization_id.NEXTVAL, 'Organization DEF', 'info@def.com', 'orgpass', 'org3.jpg', '1112223333', 3);

INSERT INTO Organization (Organization_ID, Organization_Name, Organization_Email, Organization_Password, Organization_Picture, Organization_Phone, Finance_ID)
VALUES (seq_organization_id.NEXTVAL, 'Organization GHI', 'info@ghi.com', 'orgpass', 'org4.jpg', '4445556666', 4);

INSERT INTO Organization (Organization_ID, Organization_Name, Organization_Email, Organization_Password, Organization_Picture, Organization_Phone, Finance_ID)
VALUES (seq_organization_id.NEXTVAL, 'Organization JKL', 'info@jkl.com', 'orgpass', 'org5.jpg', '7778889999', 5);



INSERT INTO Organization_Phone (Op_ID, Organization_ID, Organization_Phone)
VALUES (seq_op_id.NEXTVAL, 1, '9998887777');

INSERT INTO Organization_Phone (Op_ID, Organization_ID, Organization_Phone)
VALUES (seq_op_id.NEXTVAL, 2, '8887776666');

INSERT INTO Organization_Phone (Op_ID, Organization_ID, Organization_Phone)
VALUES (seq_op_id.NEXTVAL, 3, '7776665555');

INSERT INTO Organization_Phone (Op_ID, Organization_ID, Organization_Phone)
VALUES (seq_op_id.NEXTVAL, 4, '6665554444');

INSERT INTO Organization_Phone (Op_ID, Organization_ID, Organization_Phone)
VALUES (seq_op_id.NEXTVAL, 5, '5554443333');



INSERT INTO Player (Player_ID, Player_Name, Player_Email, Player_Password, Player_Picture, Player_JoinDate, Player_Salary, Player_Play_Hours, Player_DOB)
VALUES (seq_player_id.NEXTVAL, 'Player 1', 'player1@example.com', 'playerpass', 'player1.jpg', TO_DATE('2022-01-01', 'YYYY-MM-DD'), 5000, 100, TO_DATE('1990-01-01', 'YYYY-MM-DD'));

INSERT INTO Player (Player_ID, Player_Name, Player_Email, Player_Password, Player_Picture, Player_JoinDate, Player_Salary, Player_Play_Hours, Player_DOB)
VALUES (seq_player_id.NEXTVAL, 'Player 2', 'player2@example.com', 'playerpass', 'player2.jpg', TO_DATE('2022-02-01', 'YYYY-MM-DD'), 6000, 200, TO_DATE('1992-05-10', 'YYYY-MM-DD'));

INSERT INTO Player (Player_ID, Player_Name, Player_Email, Player_Password, Player_Picture, Player_JoinDate, Player_Salary, Player_Play_Hours, Player_DOB)
VALUES (seq_player_id.NEXTVAL, 'Player 3', 'player3@example.com', 'playerpass', 'player3.jpg', TO_DATE('2022-03-01', 'YYYY-MM-DD'), 7000, 150, TO_DATE('1994-09-20', 'YYYY-MM-DD'));

INSERT INTO Player (Player_ID, Player_Name, Player_Email, Player_Password, Player_Picture, Player_JoinDate, Player_Salary, Player_Play_Hours, Player_DOB)
VALUES (seq_player_id.NEXTVAL, 'Player 4', 'player4@example.com', 'playerpass', 'player4.jpg', TO_DATE('2022-04-01', 'YYYY-MM-DD'), 8000, 120, TO_DATE('1996-12-05', 'YYYY-MM-DD'));

INSERT INTO Player (Player_ID, Player_Name, Player_Email, Player_Password, Player_Picture, Player_JoinDate, Player_Salary, Player_Play_Hours, Player_DOB)
VALUES (seq_player_id.NEXTVAL, 'Player 5', 'player5@example.com', 'playerpass', 'player5.jpg', TO_DATE('2022-05-01', 'YYYY-MM-DD'), 9000, 180, TO_DATE('1998-03-15', 'YYYY-MM-DD'));



INSERT INTO Player_Address (Pa_ID, Player_ID, Player_Country, Player_City, Player_Street, Player_Zip_Code)
VALUES (seq_pa_id.NEXTVAL, 1, 'USA', 'New York', '123 Street', '10001');

INSERT INTO Player_Address (Pa_ID, Player_ID, Player_Country, Player_City, Player_Street, Player_Zip_Code)
VALUES (seq_pa_id.NEXTVAL, 2, 'USA', 'Los Angeles', '456 Avenue', '90001');

INSERT INTO Player_Address (Pa_ID, Player_ID, Player_Country, Player_City, Player_Street, Player_Zip_Code)
VALUES (seq_pa_id.NEXTVAL, 3, 'UK', 'London', '789 Road', 'SW1A 1AA');

INSERT INTO Player_Address (Pa_ID, Player_ID, Player_Country, Player_City, Player_Street, Player_Zip_Code)
VALUES (seq_pa_id.NEXTVAL, 4, 'Canada', 'Toronto', '321 Boulevard', 'M5V 2T3');

INSERT INTO Player_Address (Pa_ID, Player_ID, Player_Country, Player_City, Player_Street, Player_Zip_Code)
VALUES (seq_pa_id.NEXTVAL, 5, 'Germany', 'Berlin', '987 Strasse', '12345');



INSERT INTO PLAYER_SOCIAL_LINK (Psl_ID, Player_ID, Player_Facebook_Link, Player_Instagram_Link, Player_Twitter_Link, Player_Youtube_Link)
VALUES (seq_psl_id.NEXTVAL, 1, 'https://facebook.com/player1', 'https://instagram.com/player1', 'https://twitter.com/player1', 'https://youtube.com/player1');

INSERT INTO PLAYER_SOCIAL_LINK (Psl_ID, Player_ID, Player_Facebook_Link, Player_Instagram_Link, Player_Twitter_Link, Player_Youtube_Link)
VALUES (seq_psl_id.NEXTVAL, 2, 'https://facebook.com/player2', 'https://instagram.com/player2', 'https://twitter.com/player2', 'https://youtube.com/player2');

INSERT INTO PLAYER_SOCIAL_LINK (Psl_ID, Player_ID, Player_Facebook_Link, Player_Instagram_Link, Player_Twitter_Link, Player_Youtube_Link)
VALUES (seq_psl_id.NEXTVAL, 3, 'https://facebook.com/player3', 'https://instagram.com/player3', 'https://twitter.com/player3', 'https://youtube.com/player3');

INSERT INTO PLAYER_SOCIAL_LINK (Psl_ID, Player_ID, Player_Facebook_Link, Player_Instagram_Link, Player_Twitter_Link, Player_Youtube_Link)
VALUES (seq_psl_id.NEXTVAL, 4, 'https://facebook.com/player4', 'https://instagram.com/player4', 'https://twitter.com/player4', 'https://youtube.com/player4');

INSERT INTO PLAYER_SOCIAL_LINK (Psl_ID, Player_ID, Player_Facebook_Link, Player_Instagram_Link, Player_Twitter_Link, Player_Youtube_Link)
VALUES (seq_psl_id.NEXTVAL, 5, 'https://facebook.com/player5', 'https://instagram.com/player5', 'https://twitter.com/player5', 'https://youtube.com/player5');



INSERT INTO Player_Phone (Pp_ID, Player_ID, Player_Phone)
VALUES (seq_pp_id.NEXTVAL, 1, '1112223333');

INSERT INTO Player_Phone (Pp_ID, Player_ID, Player_Phone)
VALUES (seq_pp_id.NEXTVAL, 2, '2223334444');

INSERT INTO Player_Phone (Pp_ID, Player_ID, Player_Phone)
VALUES (seq_pp_id.NEXTVAL, 3, '3334445555');

INSERT INTO Player_Phone (Pp_ID, Player_ID, Player_Phone)
VALUES (seq_pp_id.NEXTVAL, 4, '4445556666');

INSERT INTO Player_Phone (Pp_ID, Player_ID, Player_Phone)
VALUES (seq_pp_id.NEXTVAL, 5, '5556667777');



INSERT INTO Player_Winning (Pw_ID, Player_ID, Player_Winning)
VALUES (seq_pw_id.NEXTVAL, 1, 'Tournament 2022');

INSERT INTO Player_Winning (Pw_ID, Player_ID, Player_Winning)
VALUES (seq_pw_id.NEXTVAL, 2, 'Championship 2023');

INSERT INTO Player_Winning (Pw_ID, Player_ID, Player_Winning)
VALUES (seq_pw_id.NEXTVAL, 3, 'Cup 2022');

INSERT INTO Player_Winning (Pw_ID, Player_ID, Player_Winning)
VALUES (seq_pw_id.NEXTVAL, 4, 'Tournament 2023');

INSERT INTO Player_Winning (Pw_ID, Player_ID, Player_Winning)
VALUES (seq_pw_id.NEXTVAL, 5, 'League 2022');



INSERT INTO Player_Team (Pt_ID, Player_ID, Team_ID)
VALUES (seq_pt_id.NEXTVAL, 1, 1);

INSERT INTO Player_Team (Pt_ID, Player_ID, Team_ID)
VALUES (seq_pt_id.NEXTVAL, 2, 2);

INSERT INTO Player_Team (Pt_ID, Player_ID, Team_ID)
VALUES (seq_pt_id.NEXTVAL, 3, 3);

INSERT INTO Player_Team (Pt_ID, Player_ID, Team_ID)
VALUES (seq_pt_id.NEXTVAL, 4, 4);

INSERT INTO Player_Team (Pt_ID, Player_ID, Team_ID)
VALUES (seq_pt_id.NEXTVAL, 5, 5);

