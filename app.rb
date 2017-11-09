require 'sinatra/base'
require './lib/player'
require './lib/game'

class Battle < Sinatra::Base

  enable :sessions
  attr_reader :player1 , :player2

  get '/' do
    erb(:index)
  end

  post '/names' do
    $game = Game.new(Player.new(params[:player1]),Player.new(params[:player2]))
    redirect '/play'
  end

  get '/play' do
    player_name 
    @player1hp = $game.hit_points(player1)
    @player2hp = $game.hit_points(player2)
    erb(:play)
  end

get '/AttackP2' do
    player_name
    $game.attack(player2)
    @player1hp = $game.hit_points(player1)
    @player2hp = $game.hit_points(player2)
    erb(:attack)
  end

  def player_name
    @player1 = $game.player1
    @player2 = $game.player2
    @player1_name = @player1.name
    @player2_name = @player2.name
  end

post '/Attack' do
    $game.attack(player2)
end

  run! if app_file == $0
end
