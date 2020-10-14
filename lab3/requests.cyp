// 1
MATCH (p:Person)
  WHERE p.name = 'Denis'
RETURN p;

// 2
MATCH (person)-[:LIKE]->(smartphone)
  WHERE person.name = 'Alexander'
RETURN smartphone;

// 3 
MATCH (person)-[:LIKE]->(smartphone)
  WHERE smartphone.Company = 'Apple'
RETURN person.name;

// 4
MATCH (person)-[:HAVE]->(smartphone)
  WHERE person.name = 'Alexey'
RETURN smartphone.Company;

// 5 MATCH (person)-[:LIKE]->(smartphone)
  WHERE smartphone.Company = 'Huawei'
RETURN person.from;

// 6
MATCH (person)-[:HAVE]->(smartphone)
  WHERE smartphone.Company = 'Samsung'
RETURN person.name;

// 7
MATCH (s:Smartphone)
  WHERE s.from = 'China'
RETURN s;

// 8 
MATCH (person:Person)-[:BE_FRIEND]->(friend:Person)
RETURN friend;

// 9 
MATCH (person:Person)-[:BE_FRIEND]->(friend:Person)
WHERE person.name='Alexey'
RETURN friend;

// 10 
MATCH (person:Person)-[:BE_FRIEND]->(friend:Person)
WHERE friend.name='Alexey' OR friend.name='Denis'
RETURN person;