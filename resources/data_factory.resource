*** Settings ***
Library    String
Library    Collections

*** Keywords ***
Gerar nome de empresa
    ${prefix}=    Generate Random String    6    [LETTERS]
    ${company}=   Set Variable    Empresa ${prefix}
    Set Suite Variable    ${BOARD_RAZAO_SOCIAL}    ${company}

Gerar nome fantasia
    ${fantasy}=   Generate Random String    8    [LETTERS]
    Set Suite Variable    ${BOARD_FANTASY_NAME}    ${fantasy}

Gerar email da empresa
    ${random}=    Generate Random String    6    [LETTERS]
    ${email}=     Set Variable    ${random}@empresa.com
    Set Suite Variable    ${BOARD_COMPANY_MAIL}    ${email}

Gerar CNPJ
    ${cnpj}=    Evaluate    ''.join([str(random.randint(0,9)) for _ in range(14)])    random
    Set Suite Variable    ${BOARD_CNPJ}    ${cnpj}

Gerar telefone
    ${ddd}=    Evaluate    random.choice([11,21,31,41,51])    random
    ${num}=    Evaluate    f"9{random.randint(10000000,99999999)}"    random
    ${phone}=  Set Variable    55${ddd}${num}
    Set Suite Variable    ${BOARD_PHONE}    ${phone}

Gerar nome do responsavel
    ${nome}=    Generate Random String    6    [LETTERS]
    ${sobrenome}=    Generate Random String    8    [LETTERS]
    Set Suite Variable    ${BOARD_RESPONSAVEL}    ${nome} ${sobrenome}

Gerar descricao do servico
    ${desc}=    Generate Random String    40    [LETTERS]
    Set Suite Variable    ${BOARD_DESCRIPTION}    ${desc}

Gerar CEP
    ${cep}=    Evaluate    str(random.randint(10000000, 99999999))    random
    Set Suite Variable    ${BOARD_ZIP_CODE}    ${cep}

Gerar cidade
    ${cidades}=    Create List    São Paulo    Rio de Janeiro    Curitiba    Fortaleza    Recife
    ${city}=    Evaluate    random.choice($cidades)    random
    Set Suite Variable    ${BOARD_CITY}    ${city}

Gerar estado
    ${estados}=    Create List    SP    RJ    PR    CE    PE
    ${state}=    Evaluate    random.choice($estados)    random
    Set Suite Variable    ${BOARD_STATE}    ${state}

Gerar bairro
    ${bairros}=    Create List    Centro    Jardim América    Bela Vista    Boa Vista    Vila Nova
    ${district}=    Evaluate    random.choice($bairros)    random
    Set Suite Variable    ${BOARD_DISTRICT}    ${district}

Gerar rua
    ${ruas}=    Create List    Rua das Flores    Avenida Brasil    Rua São João    Travessa Central    Alameda das Palmeiras
    ${street}=    Evaluate    random.choice($ruas)    random
    Set Suite Variable    ${BOARD_STREET}    ${street}

Gerar numero
    ${number}=    Evaluate    str(random.randint(1, 9999))    random
    Set Suite Variable    ${BOARD_NUMBER}    ${number}

Gerar complemento
    ${comps}=    Create List    Apto 101    Bloco B    Casa 2    Fundos    Térreo
    ${comp}=    Evaluate    random.choice($comps)    random
    Set Suite Variable    ${BOARD_COMPLEMENT}    ${comp}

Gerar pais
    Set Suite Variable    ${BOARD_COUNTRY}    Brasil


Gerar dados da diretoria
    Gerar nome de empresa
    Gerar nome fantasia
    Gerar email da empresa
    Gerar CNPJ
    Gerar telefone
    Gerar nome do responsavel
    Gerar descricao do servico
    Gerar CEP
    Gerar cidade
    Gerar estado
    Gerar bairro
    Gerar rua
    Gerar numero
    Gerar complemento
    Gerar pais

