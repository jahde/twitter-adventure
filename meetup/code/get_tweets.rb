client = Twitter::REST::Client.new
tweets = client.search(hashtag).take(100)