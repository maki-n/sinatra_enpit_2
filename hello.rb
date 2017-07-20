require 'sinatra'
require './maki-n'
require './a1702ti'

template:layout do
"<html><body><h1>グループ０</h1><%= yield %></body></html>"
end

get '/' do
erb %{
<p>グループ０</p>
<p><a href="./test1">test1</a>
<p><a href="./test2">test2</a>
<p><a href="./test3">test3</a>
}
end
