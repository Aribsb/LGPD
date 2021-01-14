-- Geração de Modelo físico
-- Sql ANSI 2003 - brModelo.



CREATE TABLE empresa (
cnpj VARCHAR(10) PRIMARY KEY,
email VARCHAR(10),
logradouro VARCHAR(10),
cidade VARCHAR(10),
estado VARCHAR(10),
pais VARCHAR(10),
bairro VARCHAR(10),
numero VARCHAR(10),
observacao VARCHAR(10),
cep VARCHAR(10),
nomedaempresa VARCHAR(10)
)

CREATE TABLE pessoa (
nomedapessoa VARCHAR(10),
bairro VARCHAR(10),
logradouro VARCHAR(10),
cep VARCHAR(10),
cidade VARCHAR(10),
numero VARCHAR(10),
estado VARCHAR(10),
observacao VARCHAR(10),
pais VARCHAR(10),
email VARCHAR(10),
descricao VARCHAR(10),
cpf VARCHAR(10) PRIMARY KEY
)

CREATE TABLE avaliacao (
descricao VARCHAR(10),
data VARCHAR(10),
quantidade VARCHAR(10),
codigoavaliacao VARCHAR(10) PRIMARY KEY,
tipo VARCHAR(10),
cpf VARCHAR(10),
cnpj VARCHAR(10),
FOREIGN KEY(cpf) REFERENCES pessoa (cpf),
FOREIGN KEY(cnpj) REFERENCES empresa (cnpj)
)

CREATE TABLE resposta (
codigoresposta VARCHAR(10) PRIMARY KEY,
observacao VARCHAR(10),
tipodaresposta VARCHAR(10),
codigoavaliacao VARCHAR(10),
FOREIGN KEY(codigoavaliacao) REFERENCES avaliacao (codigoavaliacao)
)

CREATE TABLE itens_da_lgpd (
codigo_itens VARCHAR(10) PRIMARY KEY,
descricao VARCHAR(10),
item VARCHAR(10),
codigoresposta VARCHAR(10),
FOREIGN KEY(codigoresposta) REFERENCES resposta (codigoresposta)
)

CREATE TABLE perguntas_lgpd (
codigo_pergunta VARCHAR(10) PRIMARY KEY,
pergunta VARCHAR(10),
descricao VARCHAR(10),
codigoresposta VARCHAR(10),
FOREIGN KEY(codigoresposta) REFERENCES resposta (codigoresposta)
)

CREATE TABLE telefone_empresa (
telefone_PK INTEGER PRIMARY KEY,
telefone VARCHAR(10),
cnpj_FK VARCHAR(),
FOREIGN KEY(cnpj_FK) REFERENCES empresa (cnpj)
)

CREATE TABLE telefone (
telefone_PK INTEGER PRIMARY KEY,
telefone VARCHAR(10),
cpf_FK VARCHAR(),
FOREIGN KEY(cpf_FK) REFERENCES pessoa (cpf)
)

