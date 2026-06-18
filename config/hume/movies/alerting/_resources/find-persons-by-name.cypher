MATCH (n:Person)
WHERE n.name = $name
RETURN id(n) AS key, n AS data