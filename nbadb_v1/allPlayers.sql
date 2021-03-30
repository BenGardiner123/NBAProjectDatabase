create view allPlayers as 
select PLAYER_NAME ,AGE, GP, MINS, PLUS_MINUS, AST, BLK, BLKA, OREB, DREB, FG_PCT, 
FG3_PCT, FG3A, FG3M, FGA, FGM, FT_PCT, FTA, FTM, 
W, L, W_PCT, PF, PFD
from (select Season, PLAYER_NAME, TEAM_ABBREVIATION ,AGE, GP, MINS, PLUS_MINUS, AST, BLK, BLKA, OREB, DREB, FG_PCT, 
FG3_PCT, FG3A, FG3M, FGA, FGM, FT_PCT, FTA, FTM, 
W, L, W_PCT, PF, PFD, RANK() over (PARTITION by player_name order by season DESC) n
from Player
)m where n = 1

