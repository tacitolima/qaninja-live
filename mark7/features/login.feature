#language:pt
Funcionalidade: Login
    Para que eu possa cadastrar e gerenciar minhas tarefas
    Sendo um Usuário
    Posso acessar o sistema com meu email e senha previamente cadastrados

    
    Cenario: Usuário deve ser autorizado

        Dado que eu acesso a página principal
        Quando eu faço o login com "eu@papito.io" e "123456"
        Então devo ser autenticado com sucesso 
        #deve ver o email "eu@papito.io" no dashboard
        E devo ver a seguinte mensagem "Olá, Fernando"
    @temp
    Cenario: Senha Errada

        Dado que eu acesso a página principal
        Quando eu faço o login com "eu@papito.io" e "xpto123"
        Então devo ver a seguinte mensagem "Senha inválida."

    Cenario: Usuário não existe

        Dado que eu acesso a página principal
        Quando eu faço o login com "eu@papito.net" e "xpto123"
        Então devo ver a seguinte mensagem "Usuário não cadastrado."

    Cenario: Email incorreto

        Dado que eu acesso a página principal
        Quando eu faço o login com "eupapito.io" e "xpto123"
        Então devo ver a seguinte mensagem "Email incorreto ou ausente."