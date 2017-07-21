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
<div>名前を入力してください<input type="text" name="name" value="太郎"></div>
<div><input type="submit" value="決定"></div>
</form>
}
end

post '/greeting2' do
@name = params[:name]
erb %{
<p>Hello #{name}.<br>How are you?</p>
<p><a href="./test1">戻る</a></p>
}
end

get '/test1-2' do
@a = 1
@b = 2
erb %{
<%= @a %>+<%= @b %>=<%= @a+@b %><br>
}
end

get '/test1-3' do
  erb :maki_n_erb1
end 
