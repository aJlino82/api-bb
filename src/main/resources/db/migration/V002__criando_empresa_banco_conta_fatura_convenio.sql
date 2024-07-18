CREATE TABLE IF NOT EXISTS empresa (
    id BIGSERIAL PRIMARY KEY,
    razao_social VARCHAR(70) NOT NULL,
    cnpj VARCHAR(20) NOT NULL,
    endereco_logradouro VARCHAR(70) NOT NULL,
    endereco_numero VARCHAR(10) NOT NULL,
    endereco_cidade VARCHAR(70) NOT NULL,
    endereco_bairro VARCHAR(70) NOT NULL,
    endereco_complemento VARCHAR(40),
    endereco_uf CHAR(2) NOT NULL,
    endereco_cep VARCHAR(20) NOT NULL,
    criado_em TIMESTAMP NOT NULL,
    atualizado_em TIMESTAMP NOT NULL
    );

CREATE TABLE IF NOT EXISTS banco (
    id BIGSERIAL PRIMARY KEY,
    codigo VARCHAR(10) NOT NULL,
    nome VARCHAR(60) NOT NULL,
    criado_em TIMESTAMP NOT NULL,
    atualizado_em TIMESTAMP NOT NULL
    );

CREATE TABLE IF NOT EXISTS conta (
    id BIGSERIAL PRIMARY KEY,
    empresa_id BIGINT NOT NULL,
    agencia VARCHAR(10) NOT NULL,
    conta VARCHAR(15) NOT NULL,
    digito_agencia CHAR(1),
    digito_conta CHAR(1) NOT NULL,
    banco_id BIGINT NOT NULL,
    criado_em TIMESTAMP NOT NULL,
    atualizado_em TIMESTAMP NOT NULL,
    CONSTRAINT fk_conta_empresa1 FOREIGN KEY (empresa_id)
    REFERENCES empresa (id)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
    CONSTRAINT fk_conta_banco1 FOREIGN KEY (banco_id)
    REFERENCES banco (id)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION
    );

CREATE INDEX fk_conta_empresa1_idx ON conta (empresa_id);
CREATE INDEX fk_conta_banco1_idx ON conta (banco_id);

CREATE TABLE IF NOT EXISTS convenio (
    id BIGSERIAL PRIMARY KEY,
    conta_id BIGINT NOT NULL,
    numero_contrato VARCHAR(30) NOT NULL,
    carteira VARCHAR(5) NOT NULL,
    variacao_carteira VARCHAR(5),
    juros_porcentagem DECIMAL(10,2),
    multa_porcentagem DECIMAL(10,2),
    criado_em TIMESTAMP NOT NULL,
    atualizado_em TIMESTAMP NOT NULL,
    api_client_id VARCHAR(255),
    CONSTRAINT fk_convenio_conta1 FOREIGN KEY (conta_id)
    REFERENCES conta (id)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION
    );

CREATE INDEX fk_convenio_conta1_idx ON convenio (conta_id);

CREATE TABLE IF NOT EXISTS fatura (
    id BIGSERIAL PRIMARY KEY,
    valor DECIMAL(10,2) NOT NULL,
    data_vencimento TIMESTAMP NOT NULL,
    tipo VARCHAR(30) NOT NULL,
    situacao VARCHAR(20) NOT NULL,
    numero_documento VARCHAR(20),
    nosso_numero VARCHAR(30),
    tipo_pagamento VARCHAR(45) NOT NULL,
    conta_id BIGINT NOT NULL,
    convenio_id BIGINT NOT NULL,
    pessoa_id BIGINT NOT NULL,
    criado_em TIMESTAMP NOT NULL,
    atualizado_em TIMESTAMP NOT NULL,
    CONSTRAINT fk_fatura_conta1 FOREIGN KEY (conta_id)
    REFERENCES conta (id)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
    CONSTRAINT fk_fatura_convenio1 FOREIGN KEY (convenio_id)
    REFERENCES convenio (id)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
    CONSTRAINT fk_fatura_pessoa1 FOREIGN KEY (pessoa_id)
    REFERENCES pessoa (id)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION
    );

CREATE INDEX fk_fatura_conta1_idx ON fatura (conta_id);
CREATE INDEX fk_fatura_convenio1_idx ON fatura (convenio_id);
CREATE INDEX fk_fatura_pessoa1_idx ON fatura (pessoa_id);
