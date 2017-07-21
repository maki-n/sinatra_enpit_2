require 'sinatra'
require './maki-n'
#require './a1702ti'
#require './jerrytyou'

template:layout do
"<html><body><h1>グループ０</h1><%= yield %></body></html>"
end

get '/' do
erb %{
<h2>目次</h2>
<ul>
<li><a href="./test1">test1</a></li>
<li><a href="./test2">test2</a></li>
<li><a href="./test3">test3</a></li>
</ul>
}
end
