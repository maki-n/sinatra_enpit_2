require 'sinatra'

template :layout do
  "<html><body><h1>Hello Group0 !!</h1><%= yield %></body></html>"
end

=begin
get '/' do
  erb %{
    Hello World!
  }
end
=end


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
    <%= 1+1 %>
  }
end

=begin
get '/test2' do
  erb :test2
end


git '/test3' do
  erb :test3, locals => { md => markdown(:test3) }
end
=end

