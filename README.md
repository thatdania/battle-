# battlegame

This project is a work in progress of learning how to build a battle game. We learnt how to set up a controller, what elements were 
required and how to load our game onto the browser. 

# Domain Model

A strategy to approaching the problems of the challenge was to list out all the user stories that represented requirements for
the website in order for it to accomplish the challenge. My pair partner and I came up with this model before touching any code
in order to know what requirements neede to be met  

| Objects       | Messages      | Output                      |
| ------------- |:-------------:| ---------------------------:|
| fight(names)  | enter and see | Start fight by seeing names |
| P2 Hit points | want to see   | See player 2's hit points   |
| confirmation  | attack P2     | P1 wins a game of battle    |
| Attack(HP)    | reduce        | P2 hp is reduced by 10      |
| turns         | switch        | Switch from P2 to P1 turn   |
| hit points    | see           | P1 sees their hit points    |
| confirmation  | attack        | P1 should lose a battle game|
| attack(HP)    | reduce        | P1 Hp reduces by 10         |
| message(0hp)  | lose          | P1 loses a game of battle   |


| Objects          | Messages      | Output                                   |
| ---------------- |:-------------:| ----------------------------------------:|
| damage amount    | deal          | Attacks deal a random hp                 |
| opponent         | play          | lonely player plays computer             |
| range of attacks | attack P2     | P1 wins a game of battle                 |
| opponent (attack)| paralyse      | Opponent loses chance to attack          |
| opponent (chance)| poisoning     | Attack poisons opponent                  |
| Hit points       | heals         | P1 hit points are healed , increased     |
| sexy interface   | use           | an appearance to enjoy while playing     |
