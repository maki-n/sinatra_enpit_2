require 'sinatra'

template :layout do
  "<html><body><h1>Hello World</h1><%= yield %></body></html>"
end

get '/' do
  erb %{
    Hello World!
  }
end

get '/bye' do
  erb %{
    Good bye
  }
end

get '/hello/*' do |name|
  erb %{
    hello #{name}. how are you?
  }
end

get '/test' do
  erb %{
    1+1
  }
end
