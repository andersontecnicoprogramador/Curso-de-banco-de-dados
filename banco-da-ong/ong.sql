CREATE TABLE usuario (
    id_usuario INT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(255),
    endereco VARCHAR(255),
    email VARCHAR(255),
    whatsapp VARCHAR(15)
);

CREATE TABLE ong (
    id_ong INT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(255),
    endereco VARCHAR(255),
    email VARCHAR(255),
    whatsapp VARCHAR(15)
);

CREATE TABLE ocorrencia (
    id_ocorrencia INT AUTO_INCREMENT PRIMARY KEY,
    fk_usuario INT,
    fk_ong INT,
    descricao TEXT,
    endereco VARCHAR(255),
    imagem VARCHAR(255),
    data DATE,
    FOREIGN KEY (fk_usuario) REFERENCES usuario(id_usuario),
    FOREIGN KEY (fk_ong) REFERENCES ong(id_ong)
);
