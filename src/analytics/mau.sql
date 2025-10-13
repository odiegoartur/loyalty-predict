WITH tb_daily AS (

    SELECT  DISTINCT
            date(substr(DtCriacao,0,11)) AS dtDia,
            idCliente 
    FROM transacoes
    ORDER BY dtDia

),

tb_distinct AS (

    SELECT DISTINCT dtDia AS dtRef
    FROM tb_daily

)

SELECT  t1.dtRef,
        count(DISTINCT idCliente) AS MAU,
        count(DISTINCT t2.dtDia) AS qtdeDias
FROM tb_distinct AS t1

LEFT JOIN tb_daily AS t2
ON t2.dtDia <= t1.dtRef
AND julianday(t1.dtRef) - julianday (t2.dtDia) < 28

GROUP BY dtRef

ORDER BY t1.dtRef desc
