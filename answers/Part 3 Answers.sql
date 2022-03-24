# What is each pokemon's primary type?
SELECT pokemons.name, types.name FROM pokemons LEFT JOIN types ON pokemons.primary_type = types.id;

# What is Rufflet's secondary type?
SELECT p.name, t.name FROM pokemons p LEFT JOIN types t ON p.secondary_type = t.id WHERE p.name = 'Rufflet';

# What are the names of the pokemon that belong to the trainer with trainerID 303?
SELECT p.name FROM pokemons p LEFT JOIN pokemon_trainer pt ON p.id = pt.pokemon_id WHERE pt.trainerID = 303;

# How many pokemon have a secondary type Poison
SELECT COUNT(pokemons.id) FROM pokemons JOIN types ON types.id = pokemons.secondary_type WHERE secondary_type = 7;

# What are all the primary types and how many pokemon have that type?
SELECT primary_type, COUNT(id) FROM pokemons GROUP BY primary_type ORDER BY COUNT(primary_type) DESC;

# How many pokemon at level 100 does each trainer with at least one level 100 pokemon have? (Hint: your query should not display a trainer)
SELECT COUNT(*) FROM pokemon_trainer WHERE pokelevel = 100 GROUP BY trainerId;

# How many pokemon only belong to one trainer and no other?
SELECT COUNT(pt.pokemon_id) FROM pokemon_trainer pt GROUP BY pt.trainerID HAVING COUNT(pokemon_id) = 1;

