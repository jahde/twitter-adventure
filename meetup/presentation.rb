require 'slide_hero'

presentation 'meetup' do
  set_theme 'moon'

  slide "Sentiment Knockout" do
    point "Jahde Eve and Adam Czerepinski"
  end

  slide "Problem" do
    point "You want to put your finger on the pulse of an event"
    point "Direct hashtag searches return too much noise; not enough signal"
  end

  slide "Overview" do
    point "Sentiment Knockout allows you to instantly capture aggregated sentiment from Twitter users"
  end

  slide "Bieber Army" do
    image "bieber.jpg"
  end

  slide "Demo" do
  end

  slide "Landing Page" do
    image "landing-page.png"
  end

  slide "Choose your hashtags" do
    image "landing-text.png"
  end

  slide "Chart of sentiment" do
    image "sentiment-chart.png"
  end

  slide "Median Tweets" do
    image "tweets.png"
  end

  slide "Average Sentiment" do
    image "average.png"
  end

  slide "How it Works" do
  end

  slide "Technologies Used" do
    list do
    point "Twitter Gem + API"
    point "Sentimental"
    point "Sinatra"
    point "Google Charts API"
  end
  end

  slide "Get Tweets" do
    point "Twitter Gem"
    code(:ruby) do
      "get_tweets.rb"
    end
    point "Filter Retweets"
    code(:ruby) do
      "filter_rt.rb"
    end
  end

  slide "Sorting Tweets by their Sentiment Scores" do
    code(:ruby) do
      "median.rb"  
    end
  end

  slide "Retrieving 'Median' Tweets" do
    code(:ruby) do
      "median2.rb"  
    end
  end

  slide "Hurdles" do
    point "Chartkick vs 'vanilla' Google Charts"
    point "Geolocation"
  end

  slide "Next Steps" do
  end

end
