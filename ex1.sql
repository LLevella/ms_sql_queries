/*
������ �1
������� ����� ������, �������� � ������ �������� ����� ��� ���� �� ���������� ����� 450 ���. �������: model, speed, hd, Price
*/
USE [test]
GO

SELECT [model],[speed],[hd],[price]
FROM [dbo].[pc]
WHERE [price] < 450

/* ���� � ����� �� ������ � �������� ����� ����� ����������� � �������� laptop */
	SELECT [model],[speed],[hd],[price]
	FROM [dbo].[pc]
	WHERE [price] < 450
UNION
	SELECT [model],[speed],[hd],[price]
	FROM [dbo].[laptop]
	WHERE [price] < 450


GO


