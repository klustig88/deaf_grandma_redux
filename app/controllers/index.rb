get '/' do
  if params[:grandma] == params[:grandma].upcase
    @grandma = "Thats nice!"
  erb :index  
else
  @grandma = "Speak up, Sonny!"
  # Look in app/views/index.erb
  erb :index         # respond by showing index.erb  / template rendering 
  end
end 



post '/grandma' do
  p params[:user_input]
  redirect("/?grandma=#{params[:user_input]}")
end


