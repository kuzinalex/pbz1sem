CREATE (Alexey: Person {name: "Alexey", from:"Belarus"}), (Denis:
Person {name: "Denis", from: "Russia"}), (Alexander:
Person {name: "Alexander", from: "Poland"});

MATCH(Alexey:Person), (Denis:Person)
  WHERE Alexey.name = 'Alexey' AND Denis.name = 'Denis'
CREATE(Denis)-[:BE_FRIEND]->(Alexey);

MATCH(Alexey:Person), (Denis:Person)
  WHERE Alexey.name = 'Alexey' AND Denis.name = 'Denis'
CREATE(Alexey)-[:BE_FRIEND]->(Denis);

MATCH(Alexey:Person), (Denis:Person)
  WHERE Alexey.name = 'Alexey' AND Denis.name = 'Denis'
CREATE(Denis)-[:BE_FRIEND]->(Alexey);

MATCH(Alexey:Person), (Alexander:Person)
  WHERE Alexey.name = 'Alexey' AND Alexander.name = 'Alexander'
CREATE(Alexander)-[:BE_FRIEND]->(Alexey);

MATCH(Alexey:Person), (Alexander:Person)
  WHERE Alexey.name = 'Alexey' AND Alexander.name = 'Alexander'
CREATE(Alexey)-[:BE_FRIEND]->(Alexander);

MATCH(Denis:Person), (Alexander:Person)
  WHERE Denis.name = 'Denis' AND Alexander.name = 'Alexander'
CREATE(Alexander)-[:BE_FRIEND]->(Denis);

MATCH(Denis:Person), (Alexander:Person)
  WHERE Denis.name = 'Denis' AND Alexander.name = 'Alexander'
CREATE(Denis)-[:BE_FRIEND]->(Alexander);

CREATE (Iphone12: Smartphone {Company: "Apple", from:"USA"}), (SamsungGalaxyS20:
Smartphone {Company: "Samsung", from: "Korea"}), (Huawei:
Smartphone {Company: "Huawei", from: "China"});

MATCH(Alexey:Person), (Iphone12: Smartphone)
  WHERE Alexey.name = 'Alexey' AND Iphone12.Company = 'Apple'
CREATE(Alexey)-[:LIKE]->(Iphone12);

MATCH(Alexey:Person), (Phone: Smartphone)
  WHERE Alexey.name = 'Alexey' AND Phone.Company = 'Huawei'
CREATE(Alexey)-[:LIKE]->(Phone);

MATCH(Alexey:Person), (SamsungGalaxyS20:
Smartphone)
  WHERE Alexey.name = 'Alexey' AND SamsungGalaxyS20.Company = 'Samsung'
CREATE(Alexey)-[:HAVE]->(SamsungGalaxyS20);

MATCH(Person:Person), (Phone: Smartphone)
  WHERE Person.name = 'Denis' AND Phone.Company = 'Huawei'
CREATE(Person)-[:HAVE]->(Phone);

MATCH(Person:Person), (Phone: Smartphone)
  WHERE Person.name = 'Denis' AND Phone.Company = 'Apple'
CREATE(Person)-[:LIKE]->(Phone);

MATCH(Person:Person), (Phone: Smartphone)
  WHERE Person.name = 'Denis' AND Phone.Company = 'Samsung'
CREATE(Person)-[:LIKE]->(Phone);

MATCH(Person:Person), (Phone: Smartphone)
  WHERE Person.name = 'Alexander' AND Phone.Company = 'Apple'
CREATE(Person)-[:HAVE]->(Phone);

MATCH(Person:Person), (Phone: Smartphone)
  WHERE Person.name = 'Alexander' AND Phone.Company = 'Samsung'
CREATE(Person)-[:LIKE]->(Phone);



