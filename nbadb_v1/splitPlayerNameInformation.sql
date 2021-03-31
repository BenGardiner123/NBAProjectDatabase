--Alter table Player
--add FIRSTNAME varchar(30),
--	LASTNAME varchar(30)

--Alter table Player
--drop column player_name


--update Player set FIRSTNAME = 
--         case when CHARINDEX(' ',PLAYER_NAME)>0 
--         then SUBSTRING(PLAYER_NAME,1,CHARINDEX(' ',PLAYER_NAME)-1) 
--         else PLAYER_NAME
--         end 

--update Player set LASTNAME = CASE WHEN CHARINDEX(' ',PLAYER_NAME)>0 
--           THEN SUBSTRING(PLAYER_NAME,CHARINDEX(' ',PLAYER_NAME)+1,len(PLAYER_NAME))  
--           ELSE NULL 
--           END 

--Select *
--from Player