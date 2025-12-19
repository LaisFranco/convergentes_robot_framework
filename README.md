### Projeto de automação com Robot Framework WEB ###
Projeto de automação baseado em boas práticas utilizando o Robot Framework

## RECURSOS NECESSÁRIOS ##

### Python
- Python 3.12.1

### IDE
- VSCODE
- Qualquer outra IDE de sua preferência

### Links de instalação
- Python - https://www.python.org/downloads/
- VSCODE - https://code.visualstudio.com/download

## Dependências do Projeto ##
- Robot Framework
- RequestLibrary
- Collection
- SeleniumLibrary

Para instalar as dependências utiliza o comando abaixo, ele irá instalar as dependências do projeto que estão mencionadas no arquivo requirements.txt na raiz do projeto:

```bash
pip install -r requirements.txt
```

## Estrutura do Projeto ##

```bash
automacao_robot/
|-- fixtures/
|-- |-- environments.yaml
|-- |-- frontend_elements.yaml
|-- logs
|-- resources/
|-- |-- api.resource
|-- |-- config.resource
|-- |-- frontend.resource
|-- |-- variables.resource
|-- tests/
|-- |-- frontend/
|-- |-- |-- board.robot
|-- |-- |-- cost_center.robot
|-- |-- |-- department.robot
|-- |-- |-- login.robot
|-- |-- |-- user.robot
|-- .gitignore
|-- README.md
|-- requirements.txt
```

### fixtures ###
- A pasta tem como objetivo armazenar configurações e dados fundamentais para os testes, como recursos reutilizáveis que garantem a configuração dos ambientes e dados de teste.

### logs ###
- A pasta tem como objetivo armazenar os reports da execução dos testes.

### resources ###
- A pasta contêm definições de palavras-chave, variáveis e configurações reutilizáveis nos testes.

### tests ###
- A pasta tem como objetivo armazenar os arquivos de testes API e Web do projeto

### .gitignore ###
- O arquivo `.gitignore` está configurado para não permitir o versionamentos dos reports que são armazenados na pasta `logs`

### README.md ###
- O arquivo `README.md` serve como a documentação principal de um projeto e é exibido automaticamente na página inicial do repositório (por exemplo, no GitHub). Ele é escrito em Markdown (extensão .md), o que permite criar texto formatado com cabeçalhos, listas, links, tabelas e outros elementos visuais de maneira simples.

### requirements.txt ###
- O `requirements.txt` é fundamental para a instalação das dependências do projeto, garantindo que qualquer pessoa possa configurar o mesmo ambiente de desenvolvimento de forma rápida e fácil.

### Executar os testes

- Executar os testes do projeto:
  - Executar apenas cenários específicos utilizando tag:
    ```bash
    robot -d logs --include create tests/frontend/department.robot
    ```
    > Informe a tag correspondente ao cenário que deseja executar.
    
  - Executar todos os testes do projeto:
    ```bash
    robot -d logs tests/
    ```


### autores ###
Adriana Bicalho
Angélica Schiavon
Laís Oliveira
Luana Araújo
Melissa Arantes
