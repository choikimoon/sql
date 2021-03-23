SELECT a.sido, a.sigungu, ROUND(a.cnt/b.cnt, 2) di
FROM
(SELECT sido, sigungu, COUNT(*) cnt
 FROM burgerstore
 WHERE storecategory IN ( 'KFC', 'MACDONALD', 'BURGER KING')
 GROUP BY sido, sigungu) a,
(SELECT sido, sigungu, COUNT(*) cnt
 FROM burgerstore
 WHERE storecategory = 'LOTTERIA'
 GROUP BY sido, sigungu) b
WHERE a.sido = b.sido
AND a.sigungu = b.sigungu
ORDER BY di DESC;