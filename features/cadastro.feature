#language: pt
#utf-8

@CriarUsuario

Funcionalidade: Realizar login
Eu como Admin
Quero realizar login no site
Para realizar um cadastro

Cenário: Cadastrar um novo empregado
Dado que acesso o site orangehrm
Quando realizo login
Então é exibida a pagina inicial
Quando cadastro um novo empregado
Então empregado é cadastrado com sucesso


	
