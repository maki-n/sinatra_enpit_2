require 'sinatra'

get '/test1' do
erb %{
<p><a href="./greeting1">あいさつ</a></p>
<p><a href="./test1-2">test1-2</a></p>
<p><a href="./test1-3">test1-3</a></p>
}
end
  
get '/greeting1' do
erb %{
<form action="./greeting2" method="post">
<div>emailを入力してください<input type="text" name="email" value=""></div>
<div><input type="submit" value="決定"></div>
</form>
}
end

get '/greeting2' do
<p><a href="./test1">戻る</a><p>
end

get '/test1-2' do
@a = 1
erb %{
<%= a %><br>
}
end

get '/test1-3' do
  erb :maki_n_erb1
end 
