require 'sinatra/base'
require './lib/player.rb'
require './lib/game.rb'

class Battle < Sinatra::Base

  enable :sessions

  get '/' do
    p params
    erb(:index)
  end

  post '/names' do
    player_1 = Player.new(params[:player_1_name])
    player_2 = Player.new(params[:player_2_name])
    $game = Game.new(player_1, player_2)
    p params
    redirect '/play'
  end

  get '/play' do
    p params
    @game = $game
    erb :play
  end

  post '/attack' do
    $game.attack($game.switch_turn)
    redirect '/game_over' if $game.game_over?($game.turn)
    redirect '/attack'
  end

  get '/attack' do
    @game = $game
    erb(:attack)
  end

  get '/game_over' do
    @game = $game
    erb(:game_over)
  end



  # start the server if ruby file executed directly
  run! if app_file == $0
end
