*** Settings ***
Resource    ../../resources/config.resource
Test Setup    Abrir o Navegador
Test Teardown    Fechar o Navegador

*** Test Cases ***
CT01 - Login com sucesso
    Acessar a página de login do Academy
    Digitar email
    Digitar senha
    Clicar no botão entrar
    Clicar no botão logout
    Capture Page Screenshot
   