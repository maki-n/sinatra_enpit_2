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

post '/greeting2' do
@name = params[:name]
@sex = params[:sex]
@language = params[:language]
erb :maki_n_erb2
end 

get '/add' do
erb :maki_n_erb3
end 

get '/multiple' do
erb :maki_n_erb4
end 
