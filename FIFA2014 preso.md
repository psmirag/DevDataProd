FIFA 2014 Players Database
========================================================
author: Pablo Smiraglia
date: december 9th 2015

Background
========================================================

The FIFA World Cup, often simply called the World Cup, is an international association football competition contested by the senior men's national teams of the members of Fédération Internationale de Football Association (FIFA), the sport's global governing body. The championship has been awarded every four years since the inaugural tournament in 1930, except in 1942 and 1946 when it was not held because of the Second World War. The current champion is Germany, which won its fourth title at the 2014 tournament in Brazil. 

https://en.wikipedia.org/wiki/FIFA_World_Cup

Participating teams
========================================================


```r
data <- read.csv("FIFA2014.csv")
unique(data$Team)
```

```
 [1] Brazil       Cameroon     Croatia      Mexico       Australia   
 [6] Chile        Neatherlands Spain        Cote Divore  Greece      
[11] Japan        Colombia     Costa Rica   England      Italy       
[16] Uruguay      Ecuador      France       Honduras     Switzerland 
[21] Argentina    Bosnia       Iran         Nigeria      Germany     
[26] Ghana        Portugal     USA          Algeria      Belgium     
[31] Russia       South Korea 
32 Levels: Algeria Argentina Australia Belgium Bosnia Brazil ... USA
```


Instructions:
========================================================

You can use this simple app to find any player that participated in the 2014 FIFA World Cup. Three Search parameters can be used:

- Team name (eg. Argentina). Default = all (blank)
- Position (eg. GoalKeeper). Default = any
- Captain (each team has only one captain). Default = No

Parameters can be combined to create different criteria

Data from: https://datahub.io/dataset/fifa-world-cup-2014-all-players 


Want to learn more about amazing athletes ?
========================================================

Try the app and learn about each of the 32 squads

https://psmiraglia.shinyapps.io/DevDataProd

