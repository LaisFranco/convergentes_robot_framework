*** Settings ***
Resource    ../../resources/config.resource
Resource    ../../resources/data_factory.resource
Test Setup    Abrir o Navegador
Test Teardown    Fechar o Navegador

*** Test Cases ***
CT01 - Criar uma diretoria com sucesso
  [Tags]    board    create    regression
    Gerar dados da diretoria
    Acessar a página de login do Academy
    Digitar Email
    Digitar senha
    Clicar no botão entrar
    Ignorando Popup Do Chrome
    Clicar em cadastros
    Ignorando Popup Do Chrome
    Clicar em diretoria
    Clicar no botão nova direção
    Digitar o nome razao social de uma diretoria
    Digitar o nome fantasia de uma diretoria
    Digitar e-mail de uma diretoria
    Digitar cnpj de uma diretoria
    Digitar telefone de uma diretoria
    Digitar nome do responsável de uma diretoria
    Digitar descricao do serviço
    Digitar CEP 
    Digitar país
    Digitar cidade
    Digitar estado
    Digitar bairro
    Digitar rua
    Digitar número
    Digitar complemento
    Capture Page Screenshot
    Clicar no botão salvar
    Validar criacao com sucesso
    Capture Page Screenshot

CT02 - Nao permitir criar diretoria sem campos obrigatorios
    [Tags]    board    negative
    Acessar a página de login do Academy
    Digitar email
    Digitar senha
    Clicar no botão entrar
    Clicar em diretoria
    Clicar no botão nova direção
    # NÃO preenche nenhum campo
    Clicar no botão salvar
    Validar mensagem de campo obrigatorio
    Capture Page Screenshot
    Clicar no botão logout