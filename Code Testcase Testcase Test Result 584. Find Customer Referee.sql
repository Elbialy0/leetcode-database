SELECT name
FROM Customer
WHERE COALESCE(referee_id, 0) != 2; /* this function used for replace the null value 
