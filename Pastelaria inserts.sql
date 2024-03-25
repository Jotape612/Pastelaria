INSERT INTO clientes (cli_nome, cli_nome_registro, cli_cpf, cli_nasc, cli_tel, cli_email, cli_bairro, cli_cidade, cli_estado) 
VALUES 
('João da Silva', 'João', '123.456.789-00', '1990-05-15', '(11) 9999-8888', 'joao@example.com', 'Centro', 'São Paulo', 'SP'),
('Maria Oliveira', 'Maria', '987.654.321-00', '1985-10-20', '(21) 7777-6666', 'maria@example.com', 'Copacabana', 'Rio de Janeiro', 'RJ'),
('Pedro Souza', 'Pedro', '456.789.123-00', '1998-03-25', '(31) 5555-4444', 'pedro@example.com', 'Barreiro', 'Belo Horizonte', 'MG');

insert into categoria (categoria_info,categoria_lac)
values
('vegetariano','sem lac'), ('vegetariano','com lac'),
('vegano', 'sem lac'),
('original', 'sem lac'), ('original', 'com lac');
insert into categoria (categoria_info,categoria_lac)
values ('bebidas', 'N')

select*from categoria;

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
INSERT INTO produtos (prod_nome_pas, prod_fk_sabor, prod_tamanho, prod_preco, prod_fk_categoria)
VALUES 

('Big Popeye', 1, 'Medio', 8.50, 2),
('Little Popeye)', 1, 'Pequeno', 6.50, 2),

('Big Bruttus', 2, 'Grande', 8.50, 2),
('Bruttus medio', 2, 'Medio', 7.50, 2),
('Lil Bruttus', 2, 'Pequeno', 6.50, 2),

('Pastel de Abobrinha, Queijo e Ovo', 3, 'Grande', 7.50, 2),
('Pastel de Abobrinha, Queijo e Ovo', 3, 'Medio', 6.50, 2),

('Pastel de Palmito e Queijo ', 4, 'Grande', 6.50, 2),
('Pastel de Palmito e Queijo ', 4, 'Medio', 5.50, 2),
('Pastel de Palmito e Queijo', 4, 'Pequeno', 4.50, 2),


('Pastel de Milho e Queijo ', 5, 'Medio', 5.50, 2),
('Pastel de Milho e Queijo ', 5, 'Pequeno', 4.50, 2),

('Pastel de Tomate Seco e Queijo', 6, 'Grande', 6.50, 2),
('Pastel de Tomate Seco e Queijo', 6, 'Medio', 5.50, 2),
('Pastel de Tomate Seco e Queijo', 6, 'Pequeno', 4.50, 2),


('Pastel de Cogumelos e Tomate Seco ', 7, 'Medio', 12.50, 3),
('Pastel de Cogumelos e Tomate Seco', 7, 'Pequeno', 9.50,3),

('Ratatouille ', 8, 'Médio', 8.50, 3),

('Pastel de Espinafre e Tomate Cereja', 9, 'Medio', 8.50, 3),
('Pastel de Espinafre e Tomate Cereja', 9, 'Pequeno', 6.50, 3),

('Classicao', 10, 'Grande', 7.00, 4),
('Classico', 10, 'Medio', 6.00, 4),
('Classiquinho', 10, 'Pequeno', 5.00, 5),

('Pastel de Frango e Carne ', 11, 'Grande', 7.00, 4),
('Pastel de Frango e Carne ', 11, 'Medio', 6.00,  4),
('Pastel de Frango e Carne ', 11, 'Pequeno', 5.00, 4),

('Chico marreta', 12, 'Grande', 12.50,  5),


('Pastel de Bacon e Queijo ', 13, 'Grande', 7.00, 5),
('Pastel de Bacon e Queijo', 13, 'Medio', 6.00, 5),
('Pastel de Bacon e Queijo', 13, 'Pequeno', 5.00,  5),

('X-tel', 14, 'Medio', 7.50, 5),


('Calma calabreso', 15, 'Medio', 9.00, 5),
('Calabreso jr', 15, 'Pequeno', 7.00, 5),

('Palmiteira', 16, 'Médio', 6.50, 5),


('Pastel de Sardinha', 17, 'Medio', 8.50, 5),

('Pastel de Atum', 18, 'Pequeno', 5.50,  5),

('Cagha Tronko', 19, 'Medio', 12.50, 5);

INSERT INTO produtos (prod_nome_pas, prod_fk_sabor, prod_tamanho, prod_preco, prod_fk_categoria)
VALUES 

('Coca-cola', 6, '1L', '6.50', 6),  
('Sprite', 6, '1L', '5.50', 6),  
('Fanta:Uva', 6, '1L', '6.00', 6),  
('Fanta:Laranja', 6, '1L', '6.00', 6),

('Coca-cola', 6, '350ML', '4.00', 6),  
('Sprite', 6, '350ML', '3.00', 6),  
('Fanta:Uva', 6, '350ML', '3.50', 6),  
('Fanta:Laranja', 6, '350ML', '3.50', 6);

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

select*from cardapio;

create table itens_vendas (
iven_id int auto_increment primary key,
iven_fk_cardapio int,
iven_qnt float,
iven_valor_total int,

foreign key (iven_fk_cardapio) references cardapio (car_id)
);


insert into itens_cardapio (iven_fk_cardapio, itcard_qnt, itcard_valor_total)
values (37, '2', '25.00');
insert into itens_cardapio (iven_fk_cardapio, itcard_qnt, itcard_valor_total)
values (38, '1', '6.50');



create table vendas (
venda_id int auto_increment primary key,
venda_fk_cliente int,
venda_fk_itens_produtos int,
venda_fk_fpag int,
venda_valor_pago float,
venda_troco float,
venda_total float,
venda_data date,
venda_fk_funcionario int,

foreign key (venda_fk_cliente) references clientes (cli_id),
foreign key (venda_fk_itens_produtos) references itens_vendas (iven_id),
foreign key (venda_fk_fpag) references forma_pagamento (fpag_id),
foreign key (venda_fk_funcionario) references funcionario (func_id)
);

