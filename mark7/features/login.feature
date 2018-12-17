#language:pt
Funcionalidade: Login
    Para que eu possa cadastrar e gerenciar minhas tarefas
    Sendo um Usuário
    Posso acessar o sistema com meu email e senha previamente cadastrados

    Contexto: Página principal
        Dado que eu acesso a página principal

    @logout
    Cenario: Usuário deve ser autorizado
        
        Quando eu faço login com "eu@papito.io" e "123456"
        Então devo ser autenticado com sucesso 
        E devo ver a seguinte mensagem "Olá, Fernando"

    Esquema do Cenario: Tentativa de login

        Quando eu faço login com "<email>" e "<senha>"
        Então devo ver a seguinte mensagem "<alerta>"

        Exemplos: 
        |email          |senha      |alerta|
        |eu@papito.io   |xpto123    |Senha inválida.|
        |eu@papito.net  |xpto123    |Usuário não cadastrado.|
        |eupapito.net   |xpto123    |Email incorreto ou ausente.|