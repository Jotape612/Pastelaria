

INSERT INTO clientes (cli_nome, cli_nome_registro, cli_cpf, cli_nasc, cli_tel, cli_email, cli_bairro, cli_cidade, cli_estado) 
VALUES 
('João da Silva', 'João', '123.456.789-00', '2005-05-15', '(11) 9999-8888', 'joao@example.com', 'Centro', 'São Paulo', 'SP'), -- +18
('Maria Oliveira', 'Maria', '987.654.321-00', '2008-10-20', '(21) 7777-6666', 'maria@example.com', 'Copacabana', 'Rio de Janeiro', 'RJ'), -- -18
('Pedro Souza', 'Pedro', '456.789.123-00', '1998-03-25', '(31) 5555-4444', 'pedro@example.com', 'Barreiro', 'Belo Horizonte', 'MG'); -- +18

insert into categoria (categoria_info,categoria_lac)
values
('vegetariano','sem lac'), ('vegetariano','com lac'),
('vegano', 'sem lac'),
('original', 'sem lac'), ('original', 'com lac'),
('bebidas', 'N');


INSERT INTO sabor (sab_recheio)
VALUES 
-- Para ovolactovegetarianos (consomem leite e ovos)
('Espinafre, Queijo e Ovo'),
('Brócolis, Queijo e Ovo'),
('Abobrinha, Queijo e Ovo'),
-- Para lactovegetarianos (consomem apenas leite)
('Palmito e Queijo'),
('Milho e Queijo'),
('Tomate Seco e Queijo'),
-- Para veganos
('Cogumelos e Tomate Seco'),
('Abobrinha e Pimentões Assados'),
('Espinafre e Tomate Cereja'),
-- Sabores "originais"
('Frango e Queijo'),
('Frango e Carne'),
('Frango, Queijo e Bacon'),
('Bacon e Queijo'),
('Presunto e Queijo'),
('Calabresa'),
('Palmito, Queijo e Bacon'),
('Sardinhas e Queijo'),
('Atum e Queijo'),
('Quatro Queijos');

-- Inserção na tabela de cardápio
INSERT INTO produtos (prod_nome_pas, prod_fk_sabor, prod_tamanho, prod_preco, prod_fk_categoria, prod_total_vendido)
VALUES 
('Big Popeye', 1, 'Medio', 8.50, 2, '20'),
('Little Popeye', 1, 'Pequeno', 6.50, 2, '10'),

('Big Bruttus', 2, 'Grande', 8.50, 2, '5'),
('Bruttus medio', 2, 'Medio', 7.50, 2, '0'),
('Lil Bruttus', 2, 'Pequeno', 6.50, 2, '0'),

('Pastel de Abobrinha, Queijo e Ovo', 3, 'Grande', 7.50, 2, '0'),
('Pastel de Abobrinha, Queijo e Ovo', 3, 'Medio', 6.50, 2, '0'),

('Pastel de Palmito e Queijo', 4, 'Grande', 6.50, 2, '0'),
('Pastel de Palmito e Queijo', 4, 'Medio', 5.50, 2, '0'),
('Pastel de Palmito e Queijo', 4, 'Pequeno', 4.50, 2, '0'),

('Pastel de Milho e Queijo', 5, 'Medio', 5.50, 2, '0'),
('Pastel de Milho e Queijo', 5, 'Pequeno', 4.50, 2, '0'),

('Pastel de Tomate Seco e Queijo', 6, 'Grande', 6.50, 2, '0'),
('Pastel de Tomate Seco e Queijo', 6, 'Medio', 5.50, 2, '0'),
('Pastel de Tomate Seco e Queijo', 6, 'Pequeno', 4.50, 2, '0'),

('Pastel de Cogumelos e Tomate Seco', 7, 'Medio', 12.50, 3, '0'),
('Pastel de Cogumelos e Tomate Seco', 7, 'Pequeno', 9.50, 3, '0'),

('Ratatouille', 8, 'Médio', 8.50, 3, '2'),

('Pastel de Espinafre e Tomate Cereja', 9, 'Medio', 8.50, 3, '0'),
('Pastel de Espinafre e Tomate Cereja', 9, 'Pequeno', 6.50, 3, '0'),

('Classicao', 10, 'Grande', 7.00, 4, '0'),
('Classico', 10, 'Medio', 6.00, 4, '0'),
('Classiquinho', 10, 'Pequeno', 5.00, 5, '0'),

('Pastel de Frango e Carne', 11, 'Grande', 7.00, 4, '0'),
('Pastel de Frango e Carne', 11, 'Medio', 6.00, 4, '0'),
('Pastel de Frango e Carne', 11, 'Pequeno', 5.00, 4, '0'),

('Chico marreta', 12, 'Grande', 12.50, 5, '5'),

('Pastel de Bacon e Queijo', 13, 'Grande', 7.00, 5, '0'),
('Pastel de Bacon e Queijo', 13, 'Medio', 6.00, 5, '0'),
('Pastel de Bacon e Queijo', 13, 'Pequeno', 5.00, 5, '0'),

('X-tel', 14, 'Medio', 7.50, 5, '0'),

('Calma calabreso', 15, 'Medio', 9.00, 5, '0'),
('Calabreso jr', 15, 'Pequeno', 7.00, 5, '0'),

('Palmiteira', 16, 'Médio', 6.50, 5, '0'),

('Pastel de Sardinha', 17, 'Medio', 8.50, 5, '0'),

('Pastel de Atum', 18, 'Pequeno', 5.50, 5, '0'),

('Cagha Tronko', 19, 'Medio', 12.50, 5, '0'),

('Coca-cola', 6, '1L', '6.50', 6, '2'),
('Sprite', 6, '1L', '5.50', 6, '1'),
('Fanta:Uva', 6, '1L', '6.00', 6, '0'),
('Fanta:Laranja',6, '1L', '6.00', 6, '0'),

('Coca-cola', 6, '350ML', '4.00', 6, '0'),
('Sprite', 6, '350ML', '3.00', 6, '0'),
('Fanta:Uva', 6, '350ML', '3.50', 6, '0'),
('Fanta:Laranja', 6, '350ML', '3.50', 6, '0');


-- Inserção na tabela de forma de pagamento
INSERT INTO forma_pagamento (fpag_nome)
VALUES 
('Dinheiro'),
('Cartão de Crédito'),
('Cartão de Débito'),
('Pix');

-- Inserção na tabela de funcionário
INSERT INTO funcionario (func_nome, func_cpf, func_nasc, func_salario, func_vendas)
VALUES 
('Fernanda Oliveira', '111.222.333-44', '1980-08-10', 2000.00, 0),
('Carlos Silva', '222.333.444-55', '1995-03-20', 2000.00, 0),
('Ana Souza', '333.444.555-66', '1992-11-15', 2000.00, 0);




-- Falta de inserção nas seguitnes tabelas:

insert into itens_venda (iven_fk_produtos, iven_qnt, iven_valor_total)
values (18, '2', '17.00'), (38, '1', '6.50'), (33, '3', '21.00');

insert into itens_venda (iven_fk_produtos, iven_qnt, iven_valor_total)
values (18, '2', '17.00');

insert into itens_venda (iven_fk_produtos, iven_qnt, iven_valor_total)
values (16, '1', '12.50');



INSERT INTO venda (venda_fk_cliente, venda_fk_itens_produtos, venda_fk_fpag, venda_valor_pago, venda_troco, venda_total, venda_data, venda_fk_funcionario)
VALUES 
(1, 1, 3, '23.50', '0', '23.50', '2024-03-25', 1),
(1, 2, 3, '6.50', '0', '6.50', '2024-03-25', 1),
(3, 3, 1, '50.00', '29.00', '21.00', '2024-03-25', 2),
(3, 4, 3, '50.00', '29.00', '21.00', '2024-03-25', 2),
(2, 5, 3, '23.50', '0', '23.50', '2024-03-25', 1);

