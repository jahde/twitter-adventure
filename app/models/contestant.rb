class Contestant
  attr_reader :hashtag, :tweets, :scores, :average, :positive, :negative, :neutral, :name, :median

  def initialize(param)
    @hashtag = check_param(param)
    @tweets = retrieve_tweets(@hashtag)
    @scores = get_scores(@tweets)
    @average = analyze_tweets(@scores)
    @name = get_name
    set_result
    @median = get_median_tweets
  end

  def check_param(param)
    if param[0] == "#"
      return param
    else
      return "#" + param
    end
  end

  def retrieve_tweets(hashtag)
    #use twitter gem
    keys = YAML.load_file('./app/application.yml')

    client = Twitter::REST::Client.new do |config|
      config.consumer_key        = keys['CONSUMER_KEY']
      config.consumer_secret     = keys['CONSUMER_SECRET']
      config.access_token        = keys['ACCESS_TOKEN']
      config.access_token_secret = keys['ACCESS_TOKEN_SECRET']
    end

    tweets = client.search(hashtag).take(100)
    tweets.reject! {|tweet| tweet.text.include?("RT")}
    tweets.map! {|tweet| tweet.text}
  end

  def get_scores(tweets)
    Sentimental.load_defaults
    Sentimental.threshold = 0.0
    analyzer = Sentimental.new

    tweets.map do |tweet|
      analyzer.get_score(tweet)
    end
  end

  def analyze_tweets(scores)
    #run array of retrieved_tweets through sentiment
    #map out numbers
    #return average
    test = (scores.inject{|sum, x| sum + x}.to_f) / scores.count
  end

  def set_result
    @positive = []
    @negative = []
    @neutral = []

    Sentimental.load_defaults
    Sentimental.threshold = 0.0
    analyzer = Sentimental.new

    tweets.map do |tweet|
      case analyzer.get_sentiment(tweet)
      when :positive
        @positive << tweet
      when :negative
        @negative << tweet
      when :neutral
        @neutral << tweet
      end
    end
  end

  def get_name
    @hashtag[1..-1].capitalize
  end

  def get_median_tweets
    arr = []

    @tweets.each_with_index do |tweet,index|
      arr << [scores[index],tweets[index]]
    end

    array_median(arr.sort! {|x,y| x[0] <=> y[0]})
  end

  def array_median(array)
    x = array.count
    n = x/(2.to_i)
    new_array = array[n-2..n+2]
    new_array.map! do |tweet|
      tweet[1]
    end
  end

end
