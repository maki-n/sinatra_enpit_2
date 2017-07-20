# -*- coding: utf-8 -*-
require 'sinatra'

get '/test2/*' do |name|
  erb %{   hello #{name}. how are you?
}
end
  
get '/test1' do
  erb %{
1+1= <%= 1+1 %><br>
1+2= <%= 1+2 %><br>
}
end

get '/test3' do
  erb :test3
end 
