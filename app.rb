require 'sinatra'

@@Palabra = "CIRCO"
get '/' do
	@guiones = "_ _ _ _ _"
	erb :index
end
