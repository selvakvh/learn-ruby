require 'sinatra'
require './day_of_week'

get '/' do
  "hello, world!, it's #{day_of_week}"
end
