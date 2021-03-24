SELECT p.*, :cid, NVL(c.day, 0) day, NVL(c.cnt, 0) cnt, t.cnm
FROM product p, cycle c, customer t
WHERE p.pid = c.pid (+)
    AND c.cid(+) =:cid
    AND :cid = t.cid;
    
    SELECT p.*, :cid, cu.cnm, NVL(c.day, 0) day, NVL(c.cnt, 0) cnt 
FROM cycle c, product p, customer cu
WHERE p.pid = c.pid(+) AND 
c.cid(+) = :cid
ORDER BY cu.cnm;