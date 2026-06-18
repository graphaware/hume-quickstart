MATCH path=(n:Movie {title: 'The Matrix'})<-[:ACTED_IN]-(p:Person)
RETURN path
LIMIT 20