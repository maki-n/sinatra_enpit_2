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
