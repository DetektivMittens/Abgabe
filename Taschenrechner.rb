require 'sinatra'
require 'sinatra/reloader'if development?
#load "./Math.rb"
require "./Math"


result="Hier steht das Ergebnis" #steht solange da, bis der Post-Request ausgeführt wird

get '/' do
@result=result
haml:oberflaeche
end


post "/input" do



result= eval params["numbers"]

# TODO: Never, never do something like this without sanitizing the user input
# If you comment this in, the user is able to enter `File.read('/etc/passwd')`
# and if the server is running on a unix machine, the content of the password
# file is visible to the user
# TODO: Google for 'remote code execution'
# result=eval(params["numbers"])

redirect to("/")
end

 #sanatize, whitelist
