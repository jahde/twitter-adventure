def get_median_tweets
  arr = []
  @tweets.each_with_index do |tweet,index|
    arr << [scores[index],tweets[index]]
  end
  array_median(arr.sort! {|x,y| x[0] <=> y[0]})
end