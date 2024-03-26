create database Pastelaria_japo;

use pastelaria_japo;

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

alter table clientes add column cli_pedidos int;



create table categoria ( -- saber se eh vegetariano, vegano, original, sem lactose, c/lactose
categoria_id int primary key auto_increment,
categoria_info varchar(50),
categoria_lac varchar(20)
);



create table sabor (
sab_id int primary key auto_increment,
sab_recheio varchar (100)
);


create table produtos (
prod_id int primary key auto_increment,
prod_nome_pas varchar(100),
prod_fk_sabor int, 
prod_tamanho varchar(100),
prod_preco float,
prod_fk_categoria int,


foreign key (prod_fk_categoria) references categoria  (categoria_id)
);

create table produtos_vendidos (
prodVE_id int primary key auto_increment,
prodVE_data date,
prodVE_qnt float,
prodVE_fk_prod int,

foreign key (prodVE_fk_prod) references produtos  (prod_id)
);

create table itens_venda (
iven_id int auto_increment primary key,
iven_fk_produtos int,
iven_qnt float,
iven_valor_total int,

foreign key (iven_fk_produtos) references produtos (prod_id)
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


create table venda (
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
foreign key (venda_fk_itens_produtos) references itens_venda (iven_id),
foreign key (venda_fk_fpag) references forma_pagamento (fpag_id),
foreign key (venda_fk_funcionario) references funcionario (func_id)
);
