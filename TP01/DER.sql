-- Tabela Usuário
CREATE TABLE Usuario (
    ID INT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(100) NOT NULL,
    endereco VARCHAR(255) NOT NULL,
    telefone VARCHAR(20) NOT NULL,
    tipo VARCHAR(20) NOT NULL,
    numero_pessoa INT NOT NULL
);

-- Tabela Veículo
CREATE TABLE Veiculo (
    ID INT AUTO_INCREMENT PRIMARY KEY,
    placa VARCHAR(10) NOT NULL,
    cor VARCHAR(20) NOT NULL,
    modelo VARCHAR(50) NOT NULL,
    fabricante VARCHAR(50) NOT NULL,
    ano INT NOT NULL,
    imagem_documento VARCHAR(255) NOT NULL,
    usuario_ID INT NOT NULL,
    FOREIGN KEY (usuario_ID) REFERENCES Usuario(ID)
);

-- Tabela Portaria
CREATE TABLE Portaria (
    ID INT AUTO_INCREMENT PRIMARY KEY,
    localizacao VARCHAR(100) NOT NULL,
    limite_vagas_carros INT NOT NULL,
    limite_vagas_motos INT NOT NULL
);

-- Tabela Registro de Entrada/Saída
CREATE TABLE Registro_Entrada_Saida (
    ID INT AUTO_INCREMENT PRIMARY KEY,
    veiculo_ID INT NOT NULL,
    usuario_ID INT NOT NULL,
    data_entrada DATETIME NOT NULL,
    data_saida DATETIME,
    portaria_ID INT NOT NULL,
    FOREIGN KEY (veiculo_ID) REFERENCES Veiculo(ID),
    FOREIGN KEY (usuario_ID) REFERENCES Usuario(ID),
    FOREIGN KEY (portaria_ID) REFERENCES Portaria(ID)
);
