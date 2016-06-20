require 'sinatra'
require 'sinatra/reloader' if development?

tasks = []
finished_tasks = []

get '/' do
  @tasks = tasks
  @finished_tasks = finished_tasks

  haml :index
end


post "/new" do
  unless params["todo"].nil? || params["todo"].empty?  then
    tasks << params["todo"]
  end
  puts params
  redirect to("/")
end

post "/finish" do
  finished_tasks << tasks.delete(params["todo"])
  redirect to("/")
end
