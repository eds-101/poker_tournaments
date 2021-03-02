require 'sinatra/base'
require './lib/peeps'

class PokerTracker < Sinatra::Base
  enable :sessions, :method_override
  
  before do

  end

  get '/' do
    erb :index
  end

  get '/add_results' do
    @winner_message = session[:winner_message]
    erb :add_results
  end

  post '/new_result' do
    @winner = params[:winner]
    session[:winner_message] = "Winner: #{@winner}"
    redirect '/add_results'
  end

  run! if app_file == $0
end