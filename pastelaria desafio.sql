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
WHERE sab_recheio = 'bacon'
AND sab_recheio = 'queijo';

-- Desafio 4

SELECT SUM(prod_preco) AS total_venda
FROM produtos;

-- Desafio 5





