CREATE DATABASE pastelaria_jotape;

use pastelaria_jotape;

create table clientes (
cli_id int primary key auto_increment,
cli_nome varchar(100),
cli_nome_registro varchar(100),
cli_cpf varchar(20),
cli_nasc date,
cli_tel varchar(20),
cli_email varchar(50),
cli_bairro varchar(100),
cli_cidade varchar (50),
cli_estado varchar(150)
);



create table categoria ( -- saber se eh vegetariano, vegano, original, sem lactose, c/lactose
categoria_id int primary key auto_increment,
categoria_info varchar(50),
categoria_lac varchar(20)
);

create table sabor (
sab_id int primary key auto_increment,
sab_recheio varchar (100)
);


create table cardapio (
car_id int primary key auto_increment,
car_nome_pas varchar(100),
car_fk_sabor int, 
car_tamanho varchar(100),
car_preco float,
car_tipo varchar(10),
car_fk_categoria int,


foreign key (car_fk_categoria) references categoria  (categoria_id)
);


create table itens_cardapio (
itcard_id int auto_increment primary key,
itcard_fk_cardapio int,
itcard_qnt float,
itcard_valor_total int,

foreign key (itcard_fk_cardapio) references cardapio (car_id)
);

create table forma_pagamento 
(
fpag_id INT AUTO_INCREMENT PRIMARY KEY,
fpag_nome varchar(50)
);

create table funcionario (
func_id int auto_increment primary key,
func_nome varchar(100),
func_cpf varchar(20),
func_nasc date,
func_salario float,
func_vendas int
);


create table conta (
conta_id int auto_increment primary key,
conta_fk_cliente int,
conta_fk_itens_produtos int,
conta_fk_fpag int,
conta_valor_pago float,
conta_troco float,
conta_total float,
conta_data date,
conta_fk_funcionario int,

foreign key (conta_fk_cliente) references clientes (cli_id),
foreign key (conta_fk_itens_produtos) references itens_cardapio (itcard_id),
foreign key (conta_fk_fpag) references forma_pagamento (fpag_id),
foreign key (conta_fk_funcionario) references funcionario (func_id)
);






