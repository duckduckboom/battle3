require 'sinatra'
require "sinatra/reloader" if development?

get '/' do
    'Hello world!'
end

get '/secret' do
    'it worked'
end

get '/haha' do
    'hahahahahahahahhahahahahhahahahahahhahahahahaha'
end

get '/named-cat' do
    p params
    @name = params[:name]
    erb(:index)
end

get '/random-cat' do
    @name = ["Amigo", "Misty", "Almond"].sample
    erb(:index)
end