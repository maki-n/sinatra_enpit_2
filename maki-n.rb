require 'sinatra'

get '/test0/*' do |name|
  erb %{   hello #{name}. how are you?
}
end
  
get '/test' do
  erb %{   <%= 1+1 %>
}
end

get '/test2' do
  erb :test2
end 
