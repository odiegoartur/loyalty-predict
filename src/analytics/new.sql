SELECT  dtRef,
        descLifeCycle,
        count(*) AS qtdeCliente

from life_cycle

where descLifeCycle <> '05-ZUMBI'

GROUP BY dtRef, descLifeCycle
ORDER BY dtRef, descLifeCycle