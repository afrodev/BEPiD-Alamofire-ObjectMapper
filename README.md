# BEPiD-Alamofire-ObjectMapper
Essa é uma apresentação para o pessoal do BEPiD do ano de 2017 para aprender como fazer requisições HTTP com Alamofire + ObjectMapper.


# Ordem de apresentação

- Quem sou eu?
	- Onde trabalho?
	- O que eu faço no trabalho? E tecnolgias que eu uso no dia-a-dia?
	- Porque é importante essa palestra?
- O que é Alamofire?
	- O que é uma requisição HTTP?
		- Protocolo que permite a transmissão de dados e a comunicação entre computadores.
	- O que é um JSON?
		- É um acrônimo para JavaScript Object Notation que é um formato leve para transmissão de dados.
	- Como vocês devem fazer hoje em dia?
- O que é Mapper (ou mapear JSON)? 
	- O que é um Mapper?
		- É um conversor do objeto JSON para o para uma classe ou vice e versa
	- Pra que ele serve? Porque eu usaria ele?
		-  	Porque é muito mais fácil (depois que você aprende a usar)
	- ObjectMapper? 
		- O object mapper ele faz exatamente isso.
	- E como vocês devem fazer hoje em dia? (Pedir pro Mário me mandar um pedaço do código dele)
- Hands-On
	- Instalando CocoaPods caso não tenham, mas pedir com antecedência que todas pessoas atualizem a versão que elas tem do CocoaPods.
	- Criar um projeto.
	- pod init
	- pod install Alamofire
	- pod install AlamofireObjectMapper
	- Mostrar uma requisição do Alamofire utilizando a API dos correios e recebendo o JSON
	- Criar um modelo de objeto com ObjectMapper
	- Fazer a requisição e mapear para o objeto como um retorno
	- Criar uma view com um textfield
	- Colocar uma label para a mostrar a rua ao colocar o CEP
	- Se der tempo colocar com a arquitetura correta MVC simples.