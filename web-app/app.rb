require 'sinatra'
require_relative 'palindrome'

get '/' do
  @title = 'Home'
  erb :index
end

get '/about' do
  @title = 'About'
  erb :about
end

get '/palindrome' do
  @title = 'Palindrom Detector'
  erb :palindrome
end

post '/check' do
  @phrase = params['phrase']
  erb :result
end
