# Exercise 7: Husky Football 2015 Season
# Read in the Husky Football 2015 game data into a variable called `husky.games.2015`
husky.games.2015 <- read.csv("./data/huskies_2015.csv")

# Create a vector of the teams that the Huskies played against during that season
# Call this vector `not.huskies`. You'll need to convert this column to a vector
#not.huskies<-husky.games.2015
# Create a vector of the their final scores for the games
# Call this variable `husky.scores`
not.huskies<-as.vector(husky.games.2015$opponent)
husky.scores<-husky.games.2015$opponent_score

# Create 2 variables called `rushing.yards` and `passing.yards` to represent the yards the Huskies rushed and passed
rushing.yards<-as.vector(husky.games.2015$rushing_yards)
passing.yards<-as.vector(husky.games.2015$passing_yards)
husky.games.2015$total.yards<-rushing.yards+passing.yards
# Create a variabled called `combined.yards` that is the total yardage of the Huskies for each game
combined.yards<-rushing.yards+passing.yards
# What is the score of the game where the Huskies had the most combined yards?
max.yards<-husky.games.2015[which.max(husky.games.2015$total.yards),][["total.yards"]]
print(paste("max yards is ",max.yards))

# Write a function `MostYardsScore` that takes in a dataframe parameter `games` and returns a descriptive sentence
# about the game that was played that had the most yards scored in it.
# Take note of the steps from above including the opposing team, score, and date the game was played

MostYardsScore<-function(games){
  row<-games[which.max(games$total.yards),]
  return(paste(c("UW vs",row[["opponent"]],"The most yards scored was",row[["total.yards"]],"score was",row[["uw_score"]]+row[["opponent_score"]],"date is",row[["date"]] ),sep=""))
}
print(MostYardsScore(husky.games.2015))
# What was the highest yardage game so far this season?
# Hint: Read in the dataset titled `huskies_2016.csv` and save it as a variable
