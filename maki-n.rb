require 'sinatra'

get '/test/*' do |name|
  erb %{   hello #{name}. how are you?
}
  
get '/test' do
  erb %{   <%= 1+1 %>
}
end 
