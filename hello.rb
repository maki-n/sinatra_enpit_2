require 'sinatra'

get '/' do
  "Hello World!"
end

get '/bye' do
  "Good bye"
end

get '/hello/*' do |name|
  "hello #{name}. how are you?"
end

template :layout do
  "<html><body><h1>Hello World</h1><%= yield %></body></html>"
end
