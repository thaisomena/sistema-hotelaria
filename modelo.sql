CREATE TABLE Hotel (
    id_hotel INT PRIMARY KEY,
    nome VARCHAR(100),
    categoria VARCHAR(50)
);

CREATE TABLE Hospede (
    cpf_hospede VARCHAR(11) PRIMARY KEY,
    nome VARCHAR(100),
    email VARCHAR(100)
);

CREATE TABLE Reserva (
    id_reserva INT PRIMARY KEY,
    dataEntrada DATE,
    dataSaida DATE,
    cpf_hospede VARCHAR(11),
    FOREIGN KEY (cpf_hospede) REFERENCES Hospede(cpf_hospede)
);