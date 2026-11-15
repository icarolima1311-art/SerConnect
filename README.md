# SER Connect | Expotech 2026.2



**Transformação Orientada a Dados: Da Cegueira Operacional à Gestão Inteligente**

Projeto acadêmico desenvolvido para a **Expotech – 2º semestre de 2026**, com o objetivo de estruturar uma arquitetura analítica para a SER Connect, transformando dados operacionais em informações estratégicas para a tomada de decisão.

---

## Sobre o projeto

A SER Connect é uma empresa fictícia do setor de telecomunicações, utilizada como cenário de estudo para a aplicação de conceitos de Engenharia de Dados, ETL, Governança de Dados e Business Intelligence.

O projeto surgiu a partir de problemas de gestão identificados no cenário da empresa, como falta de visibilidade financeira, dificuldades no acompanhamento das operações de campo e ausência de informações consolidadas sobre a satisfação dos clientes.

A proposta foi desenvolver um fluxo de dados estruturado, desde a origem das informações até a disponibilização de dashboards executivos.

## Objetivos

- Estruturar uma arquitetura de dados organizada e escalável.
- Aplicar processos de ETL para saneamento e validação das informações.
- Implementar regras de qualidade e governança de dados.
- Disponibilizar uma camada analítica em nuvem.
- Desenvolver dashboards para apoiar a tomada de decisão.

## Arquitetura do projeto

O projeto foi organizado em quatro estágios principais:

| Estágio                    | Tecnologia            | Responsabilidade                                                             |
| -------------------------- | --------------------- | ---------------------------------------------------------------------------- |
| 1. Origem dos dados        | MySQL                 | Armazenamento das bases transacionais.                                       |
| 2. Tratamento e ETL        | Orange Data Mining    | Limpeza, validação, modelagem matemática e geração de arquivos de auditoria. |
| 3. Armazenamento analítico | Supabase / PostgreSQL | Hospedagem dos dados tratados na camada Gold.                                |
| 4. Visualização            | Looker Studio         | Construção dos dashboards estratégicos.                                      |

## Tratamento e governança de dados

O processo de ETL foi desenvolvido no Orange Data Mining, atuando como uma camada de validação e controle da qualidade das informações.

Entre os tratamentos realizados, destacam-se:

- **Validação salarial:** aplicação de regras de De/Para com base na tabela mestra de cargos.
- **Satisfação dos clientes:** identificação e isolamento de avaliações críticas, incluindo notas zero.
- **Consumo de fibra óptica:** identificação de registros que ultrapassavam o limite de 1.200 metros para o segmento B2C.
- **Modelagem matemática:** aplicação de Regressão Linear para análise da relação entre tempo de resolução e consumo de fibra.

Os registros identificados nas validações foram direcionados para arquivos CSV de auditoria e quarentena, permitindo documentar as inconsistências e preservar a qualidade da base analítica.

## Banco de dados e modelagem

A camada analítica foi estruturada no Supabase, utilizando PostgreSQL.

O modelo relacional segue a abordagem **Star Schema**, contemplando três tabelas de dimensão e duas tabelas de fatos:

**Dimensões**

- `dim_cliente`
- `dim_plano`
- `dim_funcionario`

**Fatos**

- `fato_faturamento`
- `fato_chamados`

A estrutura foi documentada por meio de um Diagrama de Entidade-Relacionamento (DER) e de um dicionário de dados, incluindo colunas, tipos, restrições e regras de governança.

## Dashboards estratégicos

Foram desenvolvidos três painéis no Looker Studio, cada um direcionado a uma área de gestão da empresa.

### 1. Desempenho Financeiro

Acompanhamento dos indicadores financeiros, permitindo analisar:

- Receita líquida realizada.
- Ticket médio por fatura.
- Evolução mensal do faturamento.
- Faturamento por plano.

### 2. Operações

Monitoramento do desempenho operacional e das equipes técnicas:

- Taxa de cumprimento de SLA.
- Tempo médio de resolução.
- Consumo médio de fibra por atendimento.
- Volume de fibra aplicada.
- Chamados por tipo e situação do SLA.
- Concentração de chamados por região.

### 3. Clientes

Análise da base de clientes e dos indicadores de relacionamento:

- Total de clientes.
- Índice médio de satisfação.
- Classificação de crédito.
- Análise de clientes por bairro.

Os dashboards possuem filtros interativos para permitir diferentes perspectivas de análise.

## Demonstração

**Dashboard completo:**

[ Acessar o projeto no Looker Studio](https://datastudio.google.com/reporting/ee92e9c1-3334-4baa-adfe-b23f31d3eb18)

**Vídeo de apresentação:**

[ Assistir à apresentação do projeto no YouTube](https://youtu.be/sKowd6GuBV4)

## Documentação

A documentação técnica e estratégica está disponível neste repositório, na pasta [`docs/`](docs/).

| Documento                                                                                                                 | Descrição                                                                         |
| ------------------------------------------------------------------------------------------------------------------------- | --------------------------------------------------------------------------------- |
| [Storytelling e Contexto de Negócio v4.0](docs/SER%20Connect%20-%20Storytelling%20e%20Contexto%20de%20Negocio%20v4.0.pdf) | Contextualização da empresa, problemas identificados e proposta de transformação. |
| [Plano Técnico Pipeline v3.0](docs/SER%20Connect%20-%20Plano%20Técnico%20Pipeline%20v3.0.pdf)                             | Arquitetura tecnológica e fluxo de processamento dos dados.                       |
| [Plano de Ação v3.0](docs/SER%20Connect%20-%20Plano%20de%20A%C3%A7%C3%A3o%20v.3.0.pdf)                                    | Planejamento e etapas de execução dos dashboards.                                 |
| [Dicionário de Dados e DER v5.0](docs/SER%20Connect%20-%20Dicion%C3%A1rio%20de%20Dados%20e%20DER%20v5.0.pdf)              | Estrutura do banco, relacionamentos e regras de governança.                       |

## Tecnologias utilizadas

- MySQL
- Orange Data Mining
- Supabase
- PostgreSQL
- Looker Studio
- GitHub

## Considerações finais

O projeto demonstra como a integração entre Engenharia de Dados, processos de ETL, governança e Business Intelligence pode transformar dados operacionais em informações relevantes para a gestão.

A solução proposta permite substituir análises baseadas em suposições por indicadores estruturados, oferecendo maior visibilidade sobre o desempenho financeiro, operacional e de relacionamento com os clientes.

---

**Projeto acadêmico – Expotech 2026.2**
**UniFECAF | Gestão da Tecnologia da Informação**

