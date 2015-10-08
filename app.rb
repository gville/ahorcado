require 'sinatra'
require './lib/ahorcado'

@@palabra = "CIRCO"
@@guiones = "_ _ _ _ _"
@@contador = 0

get '/' do
	erb :index
end

post '/tomar' do
	if (@@palabra.include? params['letra']) == false
		@mensaje = "LETRA NO ES COINCIDENTE"
	else
		@@guiones = search(params['letra'])
	end
	erb :index
end


