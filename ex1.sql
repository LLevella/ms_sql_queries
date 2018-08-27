/*
Задача №1
Найдите номер модели, скорость и размер жесткого диска для всех ПК
стоимостью менее 450 дол. Вывести: model, speed, hd, Price
*/
USE [test]
GO

SELECT [model],[speed],[hd],[price]
FROM [dbo].[pc]
WHERE [price] < 450

/* åñëè â ÷èñëî ÏÊ âõîäÿò è íîóòáóêè òîãäà íóæíî îáúåäèíåíèå ñ òàáëèöåé laptop */
	SELECT [model],[speed],[hd],[price]
	FROM [dbo].[pc]
	WHERE [price] < 450
UNION
	SELECT [model],[speed],[hd],[price]
	FROM [dbo].[laptop]
	WHERE [price] < 450


GO


