*** Settings ***
Resource   ./config.resource

*** Keywords ***
#Login
Abrir o Navegador
    ${options}=    Evaluate    sys.modules['selenium.webdriver'].ChromeOptions()    sys, selenium.webdriver
    &{prefs}=    Create Dictionary
    ...    credentials_enable_service=${False}
    ...    profile.password_manager_enabled=${False}

    Call Method    ${options}    add_experimental_option    prefs    ${prefs}
    Call Method    ${options}    add_argument    --disable-save-password-bubble
    Open Browser    ${ENV.url}    chrome    options=${options}
    
    Maximize Browser Window

Fechar o Navegador
    Close Browser

Ignorando Popup Do Chrome
    ${options}=    Evaluate    sys.modules['selenium.webdriver'].ChromeOptions()    sys, selenium.webdriver
    Call Method    ${options}    add_argument    --disable-save-password-bubble
    Call Method    ${options}    add_experimental_option    prefs    {"credentials_enable_service": False, "profile.password_manager_enabled": False}

Acessar a página de login do Academy
    Go To    ${ENV.url}

Digitar email
    Wait Until Element Is Visible    ${Academy.mail}
    Input Text    ${Academy.mail}    ${MAIL}

Digitar senha
    Wait Until Element Is Visible    ${Academy.password}
    Input Text    ${Academy.password}    ${PASSWORD}

Clicar no botão entrar
    Wait Until Element Is Visible    ${Academy.btn_login}
    Click Button    ${Academy.btn_login}

Clicar em logout
    Wait Until Element Is Visible    ${Academy.btn_logout}    timeout=40s
    Click Button    ${Academy.btn_logout}

#BotaoCadastros
Clicar em cadastros
    Wait Until Element Is Visible    ${Academy.btn_cadastro}    timeout=40s
    Click Element    ${Academy.btn_cadastro}

#USER
Clicar em usuários
    Wait Until Element Is Visible    ${Academy.btn_users}    timeout=40s
    Click Element    ${Academy.btn_users}

Clicar no botão novo cadastro usuário
    Wait Until Element Is Visible    ${Academy.btn_new_user}    timeout=40s
    Click Button   ${Academy.btn_new_user}

Digitar o perfil de acesso
    Wait Until Element Is Visible    ${Academy.input_access_profile_new_user}    timeout=40s
    Input Text    ${Academy.input_access_profile_new_user}    ${ACCESS_PROFILE}

Digitar o CPF
    Wait Until Element Is Visible    ${Academy.input_cpf_new_user}    timeout=40s
    Input Text    ${Academy.input_cpf_new_user}    ${CPF}

Digitar a senha
    Wait Until Element Is Visible    ${Academy.input_password_new_user}    timeout=40s
    Input Text    ${Academy.input_password_new_user}    ${PASSWORD}

Digitar confirmar a senha
    Wait Until Element Is Visible    ${Academy.input_confirm_password_new_user}    timeout=40s
    Input Text    ${Academy.input_confirm_password_new_user}    ${PASSWORD}

Clicar no botão salvar novo
    Wait Until Element Is Visible    ${Academy. btn_save_new_user}    timeout=40s
    Click Button    ${Academy. btn_save_new_user}

#BOARD
Clicar em diretoria
    Wait Until Element Is Visible    ${Academy.btn_board}    timeout=40s
    Click Element    ${Academy.btn_board}

Digitar o nome de uma diretoria
    Criar uma nova diretoria
    Wait Until Element Is Visible    ${Academy.input_board_name}    timeout=40s
    Input Text    ${Academy.input_board_name}    ${BOARD_NAME}

#COST_CENTER
Clicar em centro de custo
    Wait Until Element Is Visible    ${Academy.btn_cost_center}    timeout=40s
    Click Element    ${Academy.btn_cost_center}

Digitar o nome de um centro de custo
    Criar uma nova diretoria
    Criar um novo centro de custo
    Wait Until Element Is Visible    ${Academy.input_cost_center}    timeout=40s
    Input Text    ${Academy.input_cost_center}    ${COST_CENTER_NAME}

#DEPARTAMENT
Clicar em departamento
    Wait Until Element Is Visible    ${Academy.btn_departament}    timeout=40s
    Click Element    ${Academy.btn_departament}

Clicar no botão novo departamento
    Wait Until Element Is Visible    ${Academy.btn_new_departament}    timeout=40s
    Click Button   ${Academy.btn_new_departament}

Digitar o nome de um departamento
    Wait Until Element Is Visible    ${Academy.input_name_new_department}    timeout=40s
    ${index}=    Evaluate    random.randint(0, len($DEPARTAMENT_NAMES)-1)    random
    ${random_departament}=    Set Variable    ${DEPARTAMENT_NAMES}[${index}]
    Input Text    ${Academy.input_name_new_department}    ${random_departament}
    Set Suite Variable    ${random_departament}   ${RANDOM_DEPARTAMENT}

Selecionar o centro de custo
    Wait Until Element Is Visible    ${Academy.select_cost_center_department}    timeout=40s
    Select From List By Index        ${Academy.select_cost_center_department}    1

Clicar no botão salvar
    Wait Until Element Is Visible    ${Academy.btn_save_departament}    timeout=40s
    Click Button    ${Academy.btn_save_departament}

Buscar departamento criado
    Wait Until Element Is Visible    ${Academy.input_search_departament}    timeout=40s
    Input Text    ${Academy.input_search_departament}    ${RANDOM_DEPARTAMENT}

Clicar no botão editar departamento
    Wait Until Element Is Visible    ${Academy.btn_edit_departament}    timeout=40s
    Click Button    ${Academy.btn_edit_departament}

Digitar novo nome para o departamento editado
    Wait Until Element Is Visible    ${Academy.input_name_new_department}    timeout=40s
    ${index}=    Evaluate    random.randint(0, len($DEPARTAMENT_NAMES)-1)    random
    ${random_departament}=    Set Variable    ${DEPARTAMENT_NAMES}[${index}]
    Input Text    ${Academy.input_name_new_department}    ${random_departament}

Clicar no botão salvar departamento
    Wait Until Element Is Visible    ${Academy.btn_save_departament}    timeout=40s
    Click Button    ${Academy.btn_save_departament}
