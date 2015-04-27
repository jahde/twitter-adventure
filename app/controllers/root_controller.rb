require 'chartkick'

class RootController < Sinatra::Base

  set :views, File.expand_path('../../views', __FILE__)

  get '/' do
    erb :index
  end

  post '/contestant' do
    query = params.map do |key, value|
      "#{key}=#{value}"
    end.join("&")

    redirect "/results?#{query}"
  end

  get '/results' do
    param1 = params[:thing_1].strip
    param2 = params[:thing_2].strip
    @contestant1 = Contestant.new(param1)
    @contestant2 = Contestant.new(param2)

    @winner = @contestant1.average > @contestant2.average ? @contestant1 : @contestant2
    @loser = @contestant1.average > @contestant2.average ? @contestant2 : @contestant1
    erb :results
  end

end
