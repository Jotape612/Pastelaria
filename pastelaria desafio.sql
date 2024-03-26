
-- Desafio 1
SELECT prod_nome_pas
FROM produtos
INNER JOIN categoria ON prod_fk_categoria = categoria_id
INNER JOIN itens_venda ON prod_id = iven_fk_produtos
INNER JOIN venda ON iven_id = venda_fk_itens_produtos
INNER JOIN clientes ON venda_fk_cliente = cli_id
WHERE categoria_info = 'vegano'
AND TIMESTAMPDIFF(YEAR, cli_nasc, CURDATE()) >= 18;
 
 -- Desafio 2
 
 -- Desafio 3

SELECT prod_nome_pas
FROM produtos
INNER JOIN sabor ON prod_fk_sabor = sab_id
WHERE sab_recheio like '%bacon%'
AND sab_recheio like '%queijo%';

-- Desafio 4

SELECT SUM(prod_preco) AS soma_dos_valores_pasteis
FROM produtos
WHERE prod_id BETWEEN 1 AND 37;


-- Desafio 5




-- Desafio 6

select prod_nome, max(iven_vendidos) as total_vendido, 
vend_qnt from venda
inner join itens_venda on vend_id = iven_fk_produtos
inner join produtos on iven_fk_produtos = prod_id
group by prod_nome_pas
order by total_venvido desc;
