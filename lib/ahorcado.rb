def search(ltr)
	retorno = ""
	palabra_letras = @@Palabra.split ""
	(0..palabra_letras.length-1).each {|i|
		if (palabra_letras[i]==ltr)
			retorno = retorno + ltr + " "
		else
			retorno = retorno + "_ "
		end
	}	
	return retorno
end
