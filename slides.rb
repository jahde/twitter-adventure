#slide ideas


#Intro - what the app is
  #Problem: You want to put your finger on the pulse of an event
    #there's too much noise/not enough signal in a normal hashtag search
  #App-Overview: We allow you to take a quick snapshot of public sentiment by
    #entering two twitter hashtags.

  #Quick Demo (30 sec)

#Technical Details

  #code snippets
    #how we retrieved tweets
      #twitter api/twitter gem
        #filtered out retweets with reject

      #got scores / took median ->
    #get median tweets + array_median - 30 seconds

  #Hurdles
    #Chartkick -> pure Google Charts
  #Geolocation hurdle (couldn't include)
    #lots of tweets don't have locations/data was cluttered with null objects

  #Technologies used
    #Twitter Gem + API
    #Sentimental
    #Sinatra
    #Google Charts API