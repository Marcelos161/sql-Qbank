# QBank - Sistema de Gerenciamento Bancário

## Descrição

O **QBank** é um sistema de gerenciamento bancário que permite o controle de contas, transações, empréstimos, cartões de crédito e pagamentos de serviços. Este repositório contém os scripts SQL necessários para criar o banco de dados e as tabelas relacionadas, garantindo a integridade dos dados e os relacionamentos apropriados.

## Estrutura do Banco de Dados

O banco de dados `QBank` é composto pelas seguintes tabelas:

- **Cliente**: Armazena informações sobre os clientes do banco.
- **Conta**: Gerencia as contas bancárias associadas a cada cliente.
- **Transação**: Registra as transações realizadas entre contas.
- **Empréstimo**: Gerencia as solicitações e informações sobre empréstimos.
- **Cartão de Crédito**: Armazena informações sobre os cartões de crédito solicitados pelos clientes.
- **Serviço**: Registra os serviços que podem ser pagos pelos clientes.
- **Pagamento**: Gerencia os pagamentos realizados pelos clientes para serviços externos.

## Requisitos

- Um servidor de banco de dados SQL Server.
- Acesso ao SQL Server Management Studio (SSMS) ou outra ferramenta que suporte execução de scripts SQL.

## Instalação

1. **Clone este repositório:**

   ```bash
   git clone <https://github.com/Marcelos161/sql-Qbank>
   cd QBank