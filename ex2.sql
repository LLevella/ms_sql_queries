/*
������ �2 
������� ������ �� ������� laptop c ������������ ��������� (speed). ������� model, speed.
*/
USE [test]
GO

SELECT [model],[speed]
FROM [dbo].[laptop]
where [speed] in 
(
	select max(speed)
	from [dbo].[laptop]
)
GO


