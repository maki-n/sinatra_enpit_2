require 'sinatra'
require './maki-n.rb'
#require './a1702ti'

template:layout do
"<html><body><h1>グループ０</h1><%= yield %></body></html>"
end

get '/' do
erb %{
<p>グループ０</p>
}
end

#<ul>
##<li><a ref="./test0/Taro/>hello Taro</a></li>
#<li><a ref="./test>test1 ( 1 + 1 )</a></li>
#<li><a ref="./test2>test2</a></li>
#}
#end
