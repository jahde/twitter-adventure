tweets.reject! {|tweet| tweet.text.include?("RT")}