/*
Задача №2
Найдите модель из таблицы laptop c максимальной скоростью (speed).
Вывести model, speed.
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


