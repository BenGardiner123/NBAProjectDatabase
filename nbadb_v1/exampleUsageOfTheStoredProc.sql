begin
exec ViewAllPlayers @pageNumber = 1,  @RowsOfPage = 100, @SortingCol = 'PLAYER_NAME', @SortType = 'DESC';
end