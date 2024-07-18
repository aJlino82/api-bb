CREATE TABLE IF NOT EXISTS pessoa (
    id BIGSERIAL PRIMARY KEY,
    criado_em TIMESTAMP NOT NULL,
    atualizado_em TIMESTAMP NOT NULL,
    nome VARCHAR(80) NOT NULL,
    documento VARCHAR(20) NOT NULL,
    pessoa_fisica BOOLEAN NOT NULL DEFAULT FALSE,
    endereco_logradouro VARCHAR(70),
    endereco_numero VARCHAR(10),
    endereco_bairro VARCHAR(70),
    endereco_cidade VARCHAR(70),
    endereco_complemento VARCHAR(40),
    endereco_uf CHAR(2),
    endereco_cep VARCHAR(20)
    );