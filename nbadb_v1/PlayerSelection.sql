CREATE TABLE [dbo].[PlayerSelection]
(
	[TeamName]          NVARCHAR(50)   Not Null, 
    [Season]            INT            NOT NULL,
    [PLAYER_ID]         INT            NOT NULL,
    [TEAM_ABBREVIATION] VARCHAR (3)    NOT NULL,
    primary key (TeamName, Season, TEAM_ABBREVIATION , Player_Id),
    Foreign key (TeamName) references Team,
    Foreign key (Season, [TEAM_ABBREVIATION], Player_ID) references Player,
   
);
