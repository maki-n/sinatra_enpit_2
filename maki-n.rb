require 'sinatra'

get '/test1' do
erb %{
<h2>サブタイトル１</h2>
<p><a href="./greeting1">あいさつ</a></p>
<p><a href="./test1-2">test1-2</a></p>
<p><a href="./test1-3">test1-3</a></p>
<p><a href="./">戻る</a></p>
}
end
  
get '/greeting1' do
erb %{
<h2>サブタイトル１</h2><h3>あいさつ</h3>
<form action="./greeting2" method="post">
<div>名前：<input type="text" name="name" value="Taro"></div>
<div>性別：<input type="radio" name="sex" value="male">男<input type="radio" name="sex" value="female">女</div>
<div>言語：<select name="language"><option value="Jp">日本語</option><option value="En">英語</option><option value="Ge">ドイツ語</option></select></div>
<div><input type="submit" value="決定"></div>
</form>
}
end

post '/greeting2' do
@name = params[:name]
@sex = params[:sex]
@language = params[:language]
erb %{
<h2>サブタイトル１</h2><h3>あいさつ</h3>
<% if @language == "En" %>
<p>Hello <%= @name %>.<br>How are you?</p>
<% end %>
<p><a href="./test1">戻る</a></p>
}
end

get '/test1-2' do
@a = 1
@b = 2
erb %{
<h2>サブタイトル１</h2><h3></h3>
<%= @a %>+<%= @b %>=<%= @a+@b %><br>
}
end

get '/test1-3' do
  erb :maki_n_erb1
end 
