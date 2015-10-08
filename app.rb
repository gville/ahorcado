require 'sinatra'
require './lib/ahorcado'

@@Palabra = "CIRCO"
get '/' do
	@guiones = "_ _ _ _ _"
	erb :index
end

post '/tomar' do
	if (@@Palabra.include? params['letra']) == false
		@mensaje = "LETRA NO ES COINCIDENTE"
	else
		@guiones = search(params['letra'])
	end
	erb :index
end


