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

/* если в число ПК входят и ноутбуки тогда нужно объединение с таблицей laptop */
	SELECT [model],[speed],[hd],[price]
	FROM [dbo].[pc]
	WHERE [price] < 450
UNION
	SELECT [model],[speed],[hd],[price]
	FROM [dbo].[laptop]
	WHERE [price] < 450


GO


