require 'sinatra/base'

class Battle < Sinatra::Base

  enable :sessions

  get '/' do
    erb(:index)
  end

  get '/play' do
    @player1 = $player1
    @player2 = $player2
    @player1hp = 100
    @player2hp = 100
    erb(:play)
  end

  post '/names' do
    $player1 = params[:player1]
    $player2 = params[:player2]
    redirect '/play'
  end

get '/AttackP2' do
    @player1 = $player1
    @player2 = $player2
    erb(:attack)
  end

  run! if app_file == $0
end
