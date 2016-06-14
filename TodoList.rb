require 'sinatra'
require 'sinatra/reloader' if development?
tasks = []
get '/' do
  puts params
  @tasks = tasks

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
  params["todo"]
  # TODO: do something with the finished todo
  # TODO: redirect to the root page
end
