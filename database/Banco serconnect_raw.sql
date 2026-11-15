
CREATE DATABASE IF NOT EXISTS serconnect_raw;
USE serconnect_raw;


CREATE TABLE dim_plano (
    id_plano INT NOT NULL,
    nome_plano VARCHAR(100) NOT NULL,
    segmento VARCHAR(10) NOT NULL,
    velocidade_mb INT NOT NULL,
    valor_mensal DECIMAL(10,2) NOT NULL,
    PRIMARY KEY (id_plano)
);


CREATE TABLE dim_funcionario (
    id_funcionario INT NOT NULL,
    cargo VARCHAR(100) NOT NULL,
    salario DECIMAL(10,2) NOT NULL,
    idade INT NOT NULL,
    PRIMARY KEY (id_funcionario)
);


CREATE TABLE dim_cliente (
    id_cliente INT NOT NULL,
    segmento VARCHAR(10) NOT NULL,
    bairro VARCHAR(100) NOT NULL,
    canal_venda VARCHAR(50) NOT NULL,
    status_cliente VARCHAR(30) NOT NULL,
    data_adesao DATE NOT NULL,
    nota_satisfacao INT NOT NULL,
    pesquisa_satisfacao DATE NOT NULL,
    PRIMARY KEY (id_cliente)
);


CREATE TABLE fato_faturamento (
    id_fatura INT NOT NULL,
    id_cliente INT NOT NULL,
    id_plano INT NOT NULL,
    data_vencimento INT NOT NULL,
    valor_fatura DECIMAL(10,2) NOT NULL,
    valor_desconto DECIMAL(10,2) NOT NULL,
    data_faturamento DATE NOT NULL,
    PRIMARY KEY (id_fatura),
    CONSTRAINT fk_fat_cliente FOREIGN KEY (id_cliente) REFERENCES dim_cliente(id_cliente),
    CONSTRAINT fk_fat_plano FOREIGN KEY (id_plano) REFERENCES dim_plano(id_plano)
);


CREATE TABLE fato_chamados (
    id_chamado INT NOT NULL,
    id_cliente INT NOT NULL,
    id_funcionario INT NOT NULL,
    tipo_chamado VARCHAR(50) NOT NULL,
    status_chamado VARCHAR(30) NOT NULL,
    tempo_resolucao_horas INT NOT NULL,
    metragem_fibra_gasta INT NOT NULL,
    data_chamado DATE NOT NULL,
    PRIMARY KEY (id_chamado),
    CONSTRAINT fk_cham_cliente FOREIGN KEY (id_cliente) REFERENCES dim_cliente(id_cliente),
    CONSTRAINT fk_cham_func FOREIGN KEY (id_funcionario) REFERENCES dim_funcionario(id_funcionario)
);
