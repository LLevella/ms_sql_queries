/*
������ �3 
������� ��� ������ ����������� ���������� ������� ��������� 10 ����. ������� model, speed
*/

USE [test]
GO

/*���� �������������� �������� ��� �����: ������+��������*/
SELECT [model],[speed]
FROM [dbo].[pc]
GROUP BY [model], [speed]
HAVING count([code]) > 10

/*���� ������������� ��������� ������ ������, � ����� ������ ��� �  speed*/
SELECT [model],[speed]
FROM [dbo].[pc]
WHERE [model] in
(
	SELECT [model]
	FROM [dbo].[pc]
	GROUP BY [model]
	HAVING count([code]) > 10
)

GO


