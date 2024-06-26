CREATE TABLE usuario (
    id_usuario INT NOT NULL AUTO_INCREMENT ,
    nome VARCHAR(255) NOT NULL,
    endereco VARCHAR(255) NOT NULL,
    email VARCHAR(255) NOT NULL ,
    whatsapp VARCHAR(15) NOT NULL,
    PRIMARY KEY(id_usuario)
    
);

CREATE TABLE ong (
    id_ong INT AUTO_INCREMENT,
    nome VARCHAR(255) NOT NULL,
    endereco VARCHAR(255) NOT NULL,
    email VARCHAR(255)NOT NULL,
    whatsapp VARCHAR(15)NOT NULL,
    PRIMARY KEY(id_ong)
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
