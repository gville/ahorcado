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
		@@contador+=1	
		if @@contador < 6 		
			@mensaje = "LETRA NO ES COINCIDENTE"
		else
			@mensaje = "PERDISTE"
			@@guiones = "_ _ _ _ _"
			@@contador = 0
		end
	else
		@@guiones = search(params['letra'])
		if @@guiones == "C I R C O "
			@mensaje = "PALABRA ADIVINADA"
		end
	end
	erb :index
end


