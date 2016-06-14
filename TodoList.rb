require 'sinatra'
require 'sinatra/reloader' if development?
tasks = []
finished_tasks = []
get '/' do
  puts params
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
  puts "Finish params:"
  puts params["todo"]
  finished_tasks << params["todo"]
  tasks.delete params["todo"]
  puts params
  redirect to("/")
end
