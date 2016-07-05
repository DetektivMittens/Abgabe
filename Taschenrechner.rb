require 'sinatra'
require 'sinatra/reloader'if development?

result="Hier steht das Ergebnis" #steht solange da, bis der Post-Request ausgeführt wird

get '/' do
@result=result
haml:oberflaeche
end

post "/input" do
result=params["numbers"]
#eval params("numbers") #.send(:eval)

redirect to("/")
end
 #eval
 #sanatize, whitelist
