﻿
CREATE PROCEDURE ViewAllPlayers @PageNumber INT, @RowsOfPage INT, @SortingCol VARCHAR(100) ='PLAYER_NAME', @SortType AS VARCHAR(100) = 'DESC'
AS
BEGIN
	SET @PageNumber=1
	SET @RowsOfPage=100
SELECT * FROM allPlayers
	ORDER BY 
	CASE WHEN @SortingCol = 'PLAYER_NAME' AND @SortType ='ASC' THEN PLAYER_NAME END ,
	CASE WHEN @SortingCol = 'PLAYER_NAME' AND @SortType ='DESC' THEN PLAYER_NAME END DESC,
	CASE WHEN @SortingCol = 'AGE' AND @SortType ='ASC' THEN AGE END ,
	CASE WHEN @SortingCol = 'AGE' AND @SortType ='DESC' THEN AGE END DESC,
	CASE WHEN @SortingCol = 'GP' AND @SortType ='ASC' THEN GP END ,
	CASE WHEN @SortingCol = 'GP' AND @SortType ='DESC' THEN GP END DESC,
	CASE WHEN @SortingCol = 'MINS' AND @SortType ='ASC' THEN MINS END ,
	CASE WHEN @SortingCol = 'MINS' AND @SortType ='DESC' THEN MINS END DESC,
	CASE WHEN @SortingCol = 'PLUS_MINUS' AND @SortType ='ASC' THEN PLUS_MINUS END ,
	CASE WHEN @SortingCol = 'PLUS_MINUS' AND @SortType ='DESC' THEN PLUS_MINUS END DESC,
	CASE WHEN @SortingCol = 'AST' AND @SortType ='ASC' THEN AST END ,
	CASE WHEN @SortingCol = 'AST' AND @SortType ='DESC' THEN AST END DESC,
	CASE WHEN @SortingCol = 'BLK' AND @SortType ='ASC' THEN BLK END ,
	CASE WHEN @SortingCol = 'BLK' AND @SortType ='DESC' THEN BLK END DESC,
	CASE WHEN @SortingCol = 'BLKA' AND @SortType ='ASC' THEN BLKA END ,
	CASE WHEN @SortingCol = 'BLKA' AND @SortType ='DESC' THEN BLKA END DESC,
	CASE WHEN @SortingCol = 'OREB' AND @SortType ='ASC' THEN OREB END ,
	CASE WHEN @SortingCol = 'OREB' AND @SortType ='DESC' THEN OREB END DESC,
	CASE WHEN @SortingCol = 'DREB' AND @SortType ='ASC' THEN DREB END ,
	CASE WHEN @SortingCol = 'DREB' AND @SortType ='DESC' THEN DREB END DESC,
	CASE WHEN @SortingCol = 'FG_PCT' AND @SortType ='ASC' THEN FG_PCT END ,
	CASE WHEN @SortingCol = 'FG_PCT' AND @SortType ='DESC' THEN FG_PCT END DESC,
	CASE WHEN @SortingCol = 'FG3_PCT' AND @SortType ='ASC' THEN FG3_PCT END ,
	CASE WHEN @SortingCol = 'FG3_PCT' AND @SortType ='DESC' THEN FG3_PCT END DESC,
	CASE WHEN @SortingCol = 'FG3A' AND @SortType ='ASC' THEN FG3A END ,
	CASE WHEN @SortingCol = 'FG3A' AND @SortType ='DESC' THEN FG3A END DESC,
	CASE WHEN @SortingCol = 'FG3M' AND @SortType ='ASC' THEN FG3M END ,
	CASE WHEN @SortingCol = 'FG3M' AND @SortType ='DESC' THEN FG3M END DESC,
	CASE WHEN @SortingCol = 'FGA' AND @SortType ='ASC' THEN FGA END ,
	CASE WHEN @SortingCol = 'FGA' AND @SortType ='DESC' THEN FGA END DESC,
	CASE WHEN @SortingCol = 'FGM' AND @SortType ='ASC' THEN FGM END ,
	CASE WHEN @SortingCol = 'FGM' AND @SortType ='DESC' THEN FGM END DESC,
	CASE WHEN @SortingCol = 'FT_PCT' AND @SortType ='ASC' THEN FT_PCT END ,
	CASE WHEN @SortingCol = 'FT_PCT' AND @SortType ='DESC' THEN FT_PCT END DESC,
	CASE WHEN @SortingCol = 'FTA' AND @SortType ='ASC' THEN FTA END ,
	CASE WHEN @SortingCol = 'FTA' AND @SortType ='DESC' THEN FTA END DESC,
	CASE WHEN @SortingCol = 'FTM' AND @SortType ='ASC' THEN FTM END ,
	CASE WHEN @SortingCol = 'FTM' AND @SortType ='DESC' THEN FTM END DESC,
	CASE WHEN @SortingCol = 'W' AND @SortType ='ASC' THEN W END ,
	CASE WHEN @SortingCol = 'W' AND @SortType ='DESC' THEN W END DESC,
	CASE WHEN @SortingCol = 'L' AND @SortType ='ASC' THEN L END ,
	CASE WHEN @SortingCol = 'L' AND @SortType ='DESC' THEN L END DESC,
	CASE WHEN @SortingCol = 'W_PCT' AND @SortType ='ASC' THEN W_PCT END ,
	CASE WHEN @SortingCol = 'W_PCT' AND @SortType ='DESC' THEN W_PCT END DESC,
	CASE WHEN @SortingCol = 'PF' AND @SortType ='ASC' THEN PF END ,
	CASE WHEN @SortingCol = 'PF' AND @SortType ='DESC' THEN PF END DESC,
	CASE WHEN @SortingCol = 'PFD' AND @SortType ='ASC' THEN PFD END ,
	CASE WHEN @SortingCol = 'PFD' AND @SortType ='DESC' THEN PFD END DESC
	
	OFFSET (@PageNumber-1)*@RowsOfPage ROWS
	FETCH NEXT @RowsOfPage ROWS ONLY
	END