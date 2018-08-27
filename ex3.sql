/*
Задача №3 
Найдите все модели компьютеров количество которых превышает 10 штук. Вывести model, speed
*/

USE [test]
GO

/*Если принципиальное различие для строк: модель+скорость*/
SELECT [model],[speed]
FROM [dbo].[pc]
GROUP BY [model], [speed]
HAVING count([code]) > 10

/*Если принципиально посчитать именно модели, а потом узнать что в  speed*/
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


