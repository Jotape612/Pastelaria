

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

('Cagha Tronko', 19, 'Medio', 12.50, 5),



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

select*from itens_venda;





insert into itens_venda (iven_fk_produtos, iven_qnt, iven_valor_total)
values (18, '2', '17.00'), (38, '1', '6.50'), (33, '3', '21.00');

insert into itens_venda (iven_fk_produtos, iven_qnt, iven_valor_total)
values (18, '2', '17.00');

insert into itens_venda (iven_fk_produtos, iven_qnt, iven_valor_total)
values (16, '1', '12.50');



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

insert into venda (venda_fk_cliente, venda_fk_itens_produtos, venda_fk_fpag, venda_valor_pago, venda_troco,venda_total,venda_data,venda_fk_funcionario)
values (1, 1, 3, '23.50', '0', '23.50', '2024-03-25', 1);

insert into venda (venda_fk_cliente, venda_fk_itens_produtos, venda_fk_fpag, venda_valor_pago, venda_troco,venda_total,venda_data,venda_fk_funcionario)
values (1, 2, 3, '6.50', '0', '6.50', '2024-03-25', 1);

insert into venda (venda_fk_cliente, venda_fk_itens_produtos, venda_fk_fpag, venda_valor_pago, venda_troco,venda_total,venda_data,venda_fk_funcionario)
values (3, 3, 1, '50.00', '29.00', '21.00', '2024-03-25', 2);

insert into venda (venda_fk_cliente, venda_fk_itens_produtos, venda_fk_fpag, venda_valor_pago, venda_troco,venda_total,venda_data,venda_fk_funcionario)
values (3, 3, 1, '50.00', '29.00', '21.00', '2024-03-25', 2);

insert into venda (venda_fk_cliente, venda_fk_itens_produtos, venda_fk_fpag, venda_valor_pago, venda_troco,venda_total,venda_data,venda_fk_funcionario)
values (2, 4, 3, '23.50', '0', '23.50', '2024-03-25', 1);

insert into venda (venda_fk_cliente, venda_fk_itens_produtos, venda_fk_fpag, venda_valor_pago, venda_troco,venda_total,venda_data,venda_fk_funcionario)
values (2, 5, 3, '17.50', '0', '17.50', '2024-03-25', 1);



DELIMITER //
CREATE function fn_get_estado (cod_parametro int)  returns varchar(100)

BEGIN
declare var_status varchar(100);

select auto_estado into var_status from automovel
where auto_id = cod_parametro;
return var_status;
END//

DELIMITER ;



-- DELIMITER CRIADOS PARA ORGANIZAR OS PRODUTOS

DELIMITER //
CREATE PROCEDURE recheio_pastel_original (in categor int) 

BEGIN
  	if categor = 1 then
   select*from produtos where prod_fk_categoria = 4;
   
   else if categor = 2 then
   select*from produtos where prod_fk_categoria = 5;
   
   else
   select*from produtos where prod_fk_categoria = 6;
   end if;
end if;
END//

DELIMITER ;

DELIMITER //
CREATE PROCEDURE recheio_pastel_vegano_vegetariano (in categ int) 

BEGIN
  	if categ = 1 then
   select*from produtos where prod_fk_categoria = 1;
   
   else if categ = 2 then
   select*from produtos where prod_fk_categoria = 2;
   
   else
   select*from produtos where prod_fk_categoria = 3;
   end if;
end if;
END//

DELIMITER ;


call recheio_pastel_vegano_vegetariano (1); -- vegetariano, sem lactose
call recheio_pastel_vegano_vegetariano (2); -- vegetariano, com lactose
call recheio_pastel_vegano_vegetariano (3); -- vegano
call recheio_pastel_original (4); -- pastel c/ carne, com lac
call recheio_pastel_original (5); -- pastel c/ carne, sem lac
call recheio_pastel_original (6); -- bebidas

select*from produtos;
