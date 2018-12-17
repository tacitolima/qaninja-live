
class LoginPage
    include Capybara::DSL
    def faz_login(email, senha) 
        find('input[id=login_email]').set email
        find('#login_password').set senha
        click_button 'Login'
    end
end