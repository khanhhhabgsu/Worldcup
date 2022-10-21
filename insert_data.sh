#! /bin/bash

if [[ $1 == "test" ]]
then
  PSQL="psql --username=postgres --dbname=worldcuptest -t --no-align -c"
else
  PSQL="psql --username=freecodecamp --dbname=worldcup -t --no-align -c"
fi

# Do not change code above this line. Use the PSQL variable above to query your database.
TRUNCATE=$($PSQL "TRUNCATE teams, games")

cat games.csv | while IFS="," read YEAR ROUND WINNER OPPONENT WINNER_GOALS OPPONENT_GOALS
do 
  if [[ $WINNER != "winner" ]]
  then
    TEAM_ID_WIN=$($PSQL "SELECT team_id FROM teams WHERE name = '$WINNER'")
    TEAM_ID_LOSE=$($PSQL "SELECT team_id FROM teams WHERE name = '$OPPONENT'")
    
    if [[ -z $TEAM_ID_WIN ]]
    then 
      INSERT_TEAM_WIN=$($PSQL "INSERT INTO teams(name) VALUES('$WINNER')") 
    fi 

    if [[ -z $TEAM_ID_LOSE ]]
    then 
      INSERT_TEAM_LOSE=$($PSQL "INSERT INTO teams(name) VALUES('$OPPONENT')")
    fi

    TEAM_ID_WIN=$($PSQL "SELECT team_id FROM teams WHERE name = '$WINNER'")
    TEAM_ID_LOSE=$($PSQL "SELECT team_id FROM teams WHERE name = '$OPPONENT'")

    INSERT_ALL_RESULT=$($PSQL "INSERT INTO games(year,round,winner_id,opponent_id,winner_goals,opponent_goals) VALUES($YEAR,'$ROUND',$TEAM_ID_WIN,$TEAM_ID_LOSE,$WINNER_GOALS,$OPPONENT_GOALS)")
  fi
done
