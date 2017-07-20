# -*- coding: utf-8 -*-
require 'sinatra'

get '/test1' do
  erb %{
<p><a href="./test1-1">test1-1</a></p>
<p><a href="./test1-2">test1-2</a></p>
<p><a href="./test1-3">test1-3</a></p>
}
end

get '/test1-2/*' do |name|
  erb %{
hello #{name}.<br>
how are you?
}
end
  
get '/test1-1' do
  @a = 1
  erb %{
1+1= <%= 1+1 %><br>
1+2= <%= 1+2 %><br>
}
end

get '/test1-3' do
  erb :maki_n_erb1
end 
