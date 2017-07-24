require 'sinatra'

get '/test1' do
erb %{
<h2>サブタイトル１</h2>
<p><a href="./greeting1">あいさつ</a></p>
<p><a href="./add">たしざん</a></p>
<p><a href="./multiple">かけざん</a></p>
<p><a href="./">戻る</a></p>
}
end
  
get '/greeting1' do
erb :maki_n_erb1
end 
#erb %{
#<h2>サブタイトル１</h2>
#<h3>あいさつ</h3>
#<form action="./greeting2" method="post">
#<div>名前：
#<input type="text" name="name" value="Taro">
#</div>
#<div>性別：
#<input type="radio" name="sex" value="male">男
#<input type="radio" name="sex" value="female">女
#</div>
#<div>言語：<select name="language">
#<option value="En">英語</option>
#<option value="Jp">日本語</option>
#<option value="Ge">ドイツ語</option>
#</select>
#</div>
#<div>
#<input type="submit" value="決定">
#<input type="reset" value="リセット">
#</div>
#</form>
#}
#end

post '/greeting2' do
@name = params[:name]
@sex = params[:sex]
@language = params[:language]
erb :maki_n_erb2
end 
#erb %{
#<h2>サブタイトル１</h2>
#<h3>あいさつ</h3>
#<% if @language == "En" %>
#<p>Hello <% if @sex == "male" %>Mr.<% end %><% if @sex == "female" %>Ms.<% end %><%= @name %>.<br>How are you?</p>
#<% end %>
#<% if @language == "Jp" %>
#<p>こんにちは、<%= @name %>さん。</p>
#<% end %>
#<% if @language == "Ge" %>
#<p>Guten Tag, <% if @sex == "male" %>Herr <% end %><% if @sex == "female" %>Frau <% end %><%= @name %>.</p>
#<% end %>
#<p><a href="./test1">戻る</a></p>
#}
#end

get '/add' do
erb :maki_n_erb3
end 
#erb %{
#<h2>サブタイトル１</h2>
#<h3>たしざん</h3>
#<% for i in 0..9 do %>
#<% a=rand(10) %>
#<% b=rand(10) %>
#<p><%= a %> + <%= b %> = <%= a + b %></p>
#<% end %>
#<p><a href="./test1">戻る</a></p>
#}
#end

get '/multiple' do
erb :maki_n_erb4
end 
