hw05-julie-song
================
Julie Song
4/24/2018

``` r
library(dieroller)
```

Problem I: Probability of getting at least one "6" in four rolls of a die
=========================================================================

``` r
# simulate one series of 1000 games of this game-I.
#each game involves rolling a die four times. 
# this means that you will end up generating a total of 4000 rolls. 

sixesI <- rep(0)
for(i in 1:1000) {
  gameI <- roll(die(), 4)
  sixesI[i] <- sum(gameI$rolls == 6)
}

#count the number of games in which there is at least one 6. 

num_of_gamesI <- sum(sixesI != 0)

#then compute the relative frequency of getting at least one "6" (this will be the approximate probability)


relative_freqI <- num_of_gamesI / 1000
relative_freqI
```

    ## [1] 0.541

``` r
#confirm: 

1 - (5/6) ^ 4
```

    ## [1] 0.5177469

Problem II: Probability of getting at least "6" in 24 rolls of a pair of dice
=============================================================================

``` r
gameII <- rep(0)
pair_six <- rep(0)
for(s in 1:1000) {
  
for(i in 1:24) {
  one <- roll(die())
  two <- roll(die())
  if(one[1] == 6 & two[1] == 6) {
    pair_six[i] <- 1
  } else {
    pair_six[i] <- 0
  }
}
  gameII[s] <- sum(pair_six)
}

#count the number of games in which there is at least one double 6. 

num_of_gamesII <- sum(gameII != 0)

#then compute the relative frequency of getting at least one "6" (this will be the approximate probability)


relative_freqII <- num_of_gamesII / 1000
relative_freqII
```

    ## [1] 0.479

``` r
#confirm: 
1 - (35/36) ^ 24
```

    ## [1] 0.4914039
