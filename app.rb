require 'sinatra'

@@Palabra = "CIRCO"
get '/' do
	@guiones = "_ _ _ _ _"
	erb :index
end

post '/tomar' do
	if (@@Palabra.include? params['letra']) == false
		@mensaje = "LETRA NO ES COINCIDENTE"
	end
	
end


