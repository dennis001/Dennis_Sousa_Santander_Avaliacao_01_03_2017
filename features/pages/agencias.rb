class PageAgencias < SitePrism::Page
	element :refCep, "input[id='refCep']"
	element :txNumeroAgencia, '#txNumeroAgencia'
	element :refCepOrigem, "input[id='refCepOrigem']"
	#<input type="text" class="inpNumAgencia" id="txNumeroAgencia" name="txNumeroAgencia" maxlength="4" onkeypress="mascNum(this,num);">


	def preencher_agencias(cep,agencias)
		refCep.set(cep)
		txNumeroAgencia.set(agencias)		
	end

	def agencia
		if resultado == false
			puts true
		end
	end
end