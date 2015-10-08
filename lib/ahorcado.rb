def search(ltr)
	retorno = ""
	palabra_letras = @@palabra.split ""
	guiones_letras = @@guiones.split " "	
	(0..palabra_letras.length-1).each {|i|
		if (palabra_letras[i]==ltr)
			retorno = retorno + ltr + " "
		else
			if guiones_letras[i] != "_" 
				retorno = retorno + guiones_letras[i] + " " 
			else
				retorno = retorno + "_ "
			end
		end
	}	
	return retorno
end
