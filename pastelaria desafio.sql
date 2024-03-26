
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
 SELECT 
    YEAR(venda_data) AS ano,
    MONTH(venda_data) AS mes,
    cli_id, cli_nome,
    COUNT(*) AS total_pedidos
FROM 
    venda
INNER JOIN 
    clientes ON venda_fk_cliente = cli_id
GROUP BY 
    YEAR(venda_data), MONTH(venda_data), cli_id, cli_nome
ORDER BY 
    YEAR(venda_data), MONTH(venda_data), total_pedidos DESC;

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



-- Desafio 6

SELECT prod_nome_pas, SUM(iven_qnt) AS total_vendido
FROM produtos
JOIN itens_venda ON prod_id = iven_fk_produtos
GROUP BY prod_id
ORDER BY total_vendido;
