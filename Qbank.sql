-- Tabela Cliente
CREATE TABLE Cliente (
    ClienteID INT PRIMARY KEY IDENTITY(1,1),
    Nome VARCHAR(100) NOT NULL,         
    CPF VARCHAR(11) NOT NULL UNIQUE,           
    DataNascimento DATE NOT NULL,              
    Endereco VARCHAR(255) NOT NULL              
);
GO

-- Tabela Conta
CREATE TABLE Conta (
    ContaID INT PRIMARY KEY IDENTITY(1,1),  
    NumeroConta VARCHAR(20) NOT NULL UNIQUE,   
    Saldo DECIMAL(15, 2) NOT NULL DEFAULT 0.00,
    Tipo VARCHAR(20) NOT NULL,                  
    ClienteID INT NOT NULL,                  
    FOREIGN KEY (ClienteID) REFERENCES Cliente(ClienteID) ON DELETE CASCADE
);
GO

-- Tabela Transação
CREATE TABLE Transacao (
    TransacaoID INT PRIMARY KEY IDENTITY(1,1),
    Data DATETIME NOT NULL DEFAULT GETDATE(),  
    Valor DECIMAL(15, 2) NOT NULL,            
    Tipo VARCHAR(20) NOT NULL,           
    ContaOrigemID INT NOT NULL,                
    ContaDestinoID INT NULL,                     
    FOREIGN KEY (ContaOrigemID) REFERENCES Conta(ContaID) ON DELETE CASCADE, 
    FOREIGN KEY (ContaDestinoID) REFERENCES Conta(ContaID) ON DELETE CASCADE  
);
GO

-- Tabela Empréstimo
CREATE TABLE Emprestimo (
    EmprestimoID INT PRIMARY KEY IDENTITY(1,1),
    Valor DECIMAL(15, 2) NOT NULL,             
    DataSolicitacao DATETIME NOT NULL DEFAULT GETDATE(), 
    Status VARCHAR(20) NOT NULL,                
    ClienteID INT NOT NULL,                  
    FOREIGN KEY (ClienteID) REFERENCES Cliente(ClienteID) ON DELETE CASCADE 
);
GO

-- Tabela Cartão de Crédito
CREATE TABLE CartaoCredito (
    CartaoID INT PRIMARY KEY IDENTITY(1,1),  
    NumeroCartao VARCHAR(16) NOT NULL UNIQUE, 
    Limite DECIMAL(15, 2) NOT NULL,           
    DataValidade DATE NOT NULL,                 
    ClienteID INT NOT NULL,                
    FOREIGN KEY (ClienteID) REFERENCES Cliente(ClienteID) ON DELETE CASCADE
);
GO

-- Tabela Serviço
CREATE TABLE Servico (
    ServicoID INT PRIMARY KEY IDENTITY(1,1), 
    Nome VARCHAR(100) NOT NULL,             
    Descricao VARCHAR(255) NOT NULL              
);
GO

-- Tabela Pagamento
CREATE TABLE Pagamento (
    PagamentoID INT PRIMARY KEY IDENTITY(1,1),
    Data DATETIME NOT NULL DEFAULT GETDATE(),  
    Valor DECIMAL(15, 2) NOT NULL,               
    ServicoID INT NOT NULL,                       
    ContaID INT NOT NULL,                         
    FOREIGN KEY (ServicoID) REFERENCES Servico(ServicoID) ON DELETE CASCADE,
    FOREIGN KEY (ContaID) REFERENCES Conta(ContaID) ON DELETE CASCADE 
);
GO
