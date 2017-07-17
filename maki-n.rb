require 'sinatra'

get '/test/*' do |name|
  erb %{   hello #{name}. how are you?
}
end 
