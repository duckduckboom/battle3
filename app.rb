require 'sinatra'
require "sinatra/reloader" if development?

class Battle < Sinatra::Base
    
    get '/' do
        erb :index
    end

    post '/names-given' do
        @player_1_name = params[:player_1_name]
        @player_2_name = params[:player_2_name]
        erb :game_start
    end

end