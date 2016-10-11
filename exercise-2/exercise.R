# Exercise 2: Creating data frames

# Create a vector of the number of points the Seahawks have scored in each game this season (google "Seahawks")
game.scores<-c(3,4,733,4,33,6)

# Create a vector of the number of points the Seahwaks have allowed to be scored against them in each game this season
opposing.scores<-c(4,2,55,6,64,33)

# Combine your two vectors into a dataframe
scores.spread<-data.frame("gameScores"=game.scores,"opposingScores"=opposing.scores)

# Create a new column "diff" that is the difference in points
scores.spread$diff<-game.scores-opposing.scores

# Create a new column "won" which is TRUE if the Seahawks wom
scores.spread$won<-scores.spread[["diff"]]>0

# Create a vector of the opponents
opponents<-c("The miami heat","The boston whitesocks",
             "The Canucks","Team USA","The maine marauders",
             "The washington redskins")

# Assign your dataframe rownames of their opponents

scores.spread$opponents<-opponents