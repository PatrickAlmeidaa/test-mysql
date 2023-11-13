SELECT
    cliente.nome AS nome,
    cliente.sobrenome AS sobrenome,
    casa.cor AS cor,
    bairro.nome AS bairro,
    carro.modelo AS carro
FROM
    cliente
LEFT JOIN casa ON cliente.id_cliente = casa.fk_cliente
LEFT JOIN bairro ON casa.fk_bairro = bairro.id_bairro
LEFT JOIN carro ON cliente.id_cliente = carro.fk_cliente;

#------------------- EXPLICACAO ----------------

/*
 - A consulta SQL faz uma seleção dos dados de várias tabelas: cliente, casa, bairro e carro.
 - Usa LEFT JOIN para unir essas tabelas com base nas chaves correspondentes.
 - No resultado da consulta, são listados o nome e sobrenome do cliente, a cor de sua casa, o nome do bairro e o modelo do carro que ele possui.
 - "AS" é usado para personalizar as colunas no resultado, tornando o resultado mais legível e descritivo, se necessário
*/