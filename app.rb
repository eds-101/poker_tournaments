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
    erb :add_results
  end

  post '/add_context' do
    session[:date] = params[:date]
    session[:location] = params[:location]
    session[:players_count] = params[:players_count]
    redirect '/add_player_details'
  end

  get '/add_player_details' do
    @players_count = session[:players_count]
    p @date = session[:date]
    @location = session[:location]
  end

  run! if app_file == $0
end