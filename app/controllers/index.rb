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

# get '/:word' do 
	# puts params[:word]
# end 

post '/grandma' do
	# puts request.body.read
	# puts params.inspect
	p params[:user_input]
  # "Implement the /grandma route yourself.<br>Params: <code>#{params.inspect}</code>"
  # redirect back to resource 
  redirect("/?grandma=#{params[:user_input]}")
end


