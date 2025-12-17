*** Settings ***
Resource    ../../resources/config.resource
Test Setup    Abrir o Navegador
Test Teardown    Fechar o Navegador

*** Test Cases ***
CT01 - Criar um centro de custo com sucesso
    Acessar a página de login do Academy
    Digitar Email
    Digitar senha
    Clicar no botão entrar
    Clicar em cadastros
    Ignorando Popup Do Chrome
    Clicar em centro de custo
    Clicar no botão novo cadastro
    Digitar o nome de um centro de custo
    Capture Page Screenshot
    Clicar no botão salvar novo