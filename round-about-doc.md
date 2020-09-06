## Rond-Point

1. rond-point (team),
2. district (arrondisssment),
3. city,
4. county (departement),
5. region (state),
6. country


```sh
cat > team.yml <<EOF
--- name of team
QmcfHufAK9ErQ9ZKJF7YX68KntYYBJngkGDoVKcZEJyRve: michel
QmTjhk5YJqxMKqSqi8PZXEBm9wryGAfS54uPZGUXdLZ4HK: alain
QmZYVoscbWWJJZWy7Ue19iGXC5SRh3kune3gKSYHv3kzKn: emile
EOF
```

each team need to be attached to a district list...

## hierarchy:
    
cat > pop.dot
# all the teams

digraph population {

# Pays, Région, Département, Ville, Code Postal, Rond Point
France -> "Alsace, Champagne-Ardenne, Lorraine" -> "51" ->  "Pargny sur Saulx "-> 51340 -> "Rond Point Alain"
France -> "Île de France" ->  "75" -> Paris -> 75012 -> "Rond Point Emile"
                                                                   Paris -> 75015 -> "Rond Point Michel"
                                                                   
Suisse ->  Vaud -> "10" -> Ecublens -> 1024 -> "Rond Point Michel" 
}



