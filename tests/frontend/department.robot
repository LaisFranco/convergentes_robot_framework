*** Settings ***
Resource        ../../resources/config.resource
Test Setup      Abrir o Navegador
Test Teardown   Fechar o Navegador



*** Test Cases ***
CT01 - Criar um departamento com sucesso
  [Tags]    department    create    regression
    Acessar a página de login do Academy
    Digitar Email
    Digitar senha
    Clicar no botão entrar
    Capture Page Screenshot
    Clicar em cadastros
    Ignorando Popup Do Chrome
    Capture Page Screenshot
    Clicar em departamento
    Capture Page Screenshot
    Clicar no botão novo departamento
    Digitar o nome de um departamento
    Capture Page Screenshot
    Selecionar o centro de custo   
    Clicar no botão salvar
    Clicar no botão logout
    Capture Page Screenshot

CT02 - Editar um departamento com sucesso
  [Tags]    department    edit    regression
    Acessar a página de login do Academy
    Digitar Email
    Digitar senha
    Clicar no botão entrar
    Capture Page Screenshot
    Clicar em cadastros
    Ignorando Popup Do Chrome
    Clicar em departamento
    Clicar no botão novo departamento
    Digitar o nome de um departamento
    Selecionar o centro de custo
    Clicar no botão salvar
    Buscar departamento criado
    Capture Page Screenshot  
    Clicar no botão editar departamento
    Capture Page Screenshot
    Digitar novo nome para o departamento editado
    Selecionar o centro de custo
    Capture Page Screenshot
    Clicar no botão salvar
    Clicar no botão logout
    Capture Page Screenshot
