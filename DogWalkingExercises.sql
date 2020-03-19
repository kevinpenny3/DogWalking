SELECT o.[Name], n.[Name]
FROM [Owner] o
LEFT JOIN Neighborhood n
ON o.NeighborhoodId = n.Id;

SELECT o.[Name], n.[Name]
FROM [Owner] o
LEFT JOIN Neighborhood n
ON o.NeighborhoodId = n.Id
WHERE o.id = 2;

SELECT w.[Name] 
FROM Walker w
ORDER BY w.[Name];

SELECT DISTINCT d.Breed
FROM Dog d;

SELECT d.[Name] as 'Dog name', o.[Name] as 'Owner Name' , n.[Name] 'Neighborhood'
FROM Dog d
LEFT JOIN Owner o 
ON d.OwnerId = o.Id
LEFT JOIN Neighborhood n
ON o.NeighborhoodId = n.Id;

SELECT Count(d.OwnerId), o.[Name]
FROM Dog d
LEFT JOIN Owner o
On d.OwnerId = o.Id
GROUP BY o.[Name];

SELECT w.[Name], Count(ws.WalkerId) as 'Walks'
FROM Walker w
LEFT JOIN Walks ws
ON ws.WalkerId = w.Id
GROUP BY w.[Name];

SELECT n.[Name], Count(w.NeighborhoodId) as 'Neighborhood Walkers'
FROM Neighborhood n
INNER JOIN Walker w
ON w.NeighborhoodId = w.Id
GROUP BY n.[Name];

SELECT DISTINCT d.[Name]
FROM Dog d
LEFT JOIN Walks ws
ON ws.DogId = d.Id
WHERE ws.[Date] >= '03/15/2020' AND ws.[Date] <= '03/21/2020' ;

SELECT d.[Name]
FROM Dog d
LEFT JOIN Walks ws
ON ws.DogId = d.Id
GROUP BY d.[Name]
HAVING COUNT(ws.Id) = 0; 
