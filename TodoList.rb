require 'sinatra'
require 'sinatra/reloader' if development?
tasks = []
get '/' do
  puts params
  unless params["todo"].nil? || params["todo"].empty?  then
tasks << params["todo"]
end
@tasks = tasks
haml :TODO_Web
end
