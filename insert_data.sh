#! /bin/bash

if [[ $1 == "test" ]]
then
  PSQL="psql --username=postgres --dbname=worldcuptest -t --no-align -c"
else
  PSQL="psql --username=freecodecamp --dbname=worldcup -t --no-align -c"
fi

# Do not change code above this line. Use the PSQL variable above to query your database.


echo $($PSQL "TRUNCATE teams, games")
cat games.csv | while IFS="," read YEAR ROUND NAME NAME1 WIN OPP
do
  if [[ $NAME != "winner" ]]
  then
    #get name
    NAME_CONST=$($PSQL "SELECT team_id FROM teams WHERE name='$NAME'")
    if [[ -z $NAME_CONST ]]
    then
      INSERT_NAME=$($PSQL "INSERT INTO teams(name) VALUES('$NAME')")
      NAME_CONST=$($PSQL "SELECT team_id FROM teams WHERE name='$NAME'")
   
    fi
    #get name
    NAME_CONST_2=$($PSQL "SELECT team_id FROM teams WHERE name='$NAME1'")
    if [[ -z $NAME_CONST_2 ]]
    then
      INSERT_NAME=$($PSQL "INSERT INTO teams(name) VALUES('$NAME1')")
      NAME_CONST_2=$($PSQL "SELECT team_id FROM teams WHERE name='$NAME1'")
    fi
    #games table
    INSERT_INTO_GAMES=$($PSQL "INSERT INTO games(year, round, winner_id, opponent_id, winner_goals, opponent_goals) VALUES($YEAR, '$ROUND', $NAME_CONST, $NAME_CONST_2, $WIN, $OPP)")
    if [[ $INSERT_INTO_GAMES == "INSERT 0 1" ]]
    then
    echo Inserted into games
    fi
  fi
done