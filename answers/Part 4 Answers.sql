#Directions: Write a query that returns the following collumns:

#Pokemon Name	Trainer Name	Level	Primary Type	Secondary Type
#Pokemon's name	Trainer's name	Current Level	Primary Type Name	Secondary Type Name
#Sort the data by finding out which trainer has the strongest pokemon so that this will act as a ranking of strongest to weakest trainer.
#You may interpret strongest in whatever way you want, but you will have to explain your decision.
__________________________________________________________________________________________________________________________________________
SELECT p.name, p.primary_type, p.secondary_type, t.trainername, SUM(pt.pokelevel)
FROM pokemons p
JOIN trainers t ON t.trainerID = p.ID
JOIN pokemon_trainer pt ON t.trainerID = pt.trainerID
GROUP BY p.name, p.primary_type, p.secondary_type, t.trainername, pt.pokelevel
ORDER BY SUM(pt.pokelevel) DESC;
------------------------------------------------------------------------------------------------------------------------------------------
#Cooltrainer Vito is the strongest because I totaled the levels of all the pokemon each trainer has and Vito came out on top
with a whopping 168 total pokemon level.





#Query to search Vitos pokemon
SELECT p.name, pt.pokelevel FROM pokemons p
JOIN trainers t ON t.trainerid = p.id
JOIN pokemon_trainer pt ON pt.trainerID = t.trainerid
WHERE t.trainername = 'Cooltrainer♂ Vito';
