-- Criar tabela produtos
CREATE TABLE produtos (
    id_produto INT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(255),
    quantidade INT,
    valor_unitario DECIMAL(10, 2)
);

-- Criar tabela venda
CREATE TABLE venda (
    id_venda INT AUTO_INCREMENT PRIMARY KEY,
    data_venda DATE,
    valor_total DECIMAL(10, 2)
);

-- Criar tabela itens_vendidos
CREATE TABLE itens_vendidos (
    id_itens_vendidos INT AUTO_INCREMENT PRIMARY KEY,
    fk_id_produto INT,
    fk_id_venda INT,
    quantidade INT,
    valor_venda DECIMAL(10, 2),
    FOREIGN KEY (fk_id_produto) REFERENCES produtos(id_produto),
    FOREIGN KEY (fk_id_venda) REFERENCES venda(id_venda)
);
