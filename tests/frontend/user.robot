*** Settings ***
Resource    ../../resources/config.resource
Test Setup    Abrir o Navegador
Test Teardown    Fechar o Navegador

*** Test Cases ***
CT01 - Cadastrar um usuário com sucesso
    Acessar a página de login do Academy
    Digitar Email
    Digitar senha
    Clicar no botão entrar
    Clicar em cadastros
    Ignorando Popup Do Chrome
    Clicar em usuários
    Clicar no botão novo cadastro usuário
    Digitar o perfil de acesso
    Digitar o CPF
    Digitar a senha
    Digitar confirmar a senha
    Capture Page Screenshot
    Clicar no botão salvar novo