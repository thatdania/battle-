require 'sinatra/base'
require './lib/player'

class Battle < Sinatra::Base

  enable :sessions

  get '/' do
    erb(:index)
  end

  post '/names' do
    $player1 = Player.new(params[:player1])
    $player2 = Player.new(params[:player2])
    redirect '/play'
  end

  get '/play' do
    @player1 = $player1.name
    @player2 = $player2.name
    @player1hp = $player1.hit_points
    @player2hp = $player2.hit_points
    erb(:play)
  end

get '/AttackP2' do
    @player1 = $player1.name
    @player2 = $player2.name
    @player1hp = $player1.reduce_hit_points
    @player2hp = $player2.reduce_hit_points
    erb(:attack)
  end

post '/Attack' do
    @player2.reduce_hit_points
end

  run! if app_file == $0
end
