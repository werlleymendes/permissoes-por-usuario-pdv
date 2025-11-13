SELECT a.sequsuario, a.nome, b.nroempresa, c.uititle funccao,
       CASE 
         WHEN a.nivel = 1 THEN 'NORMAL'
           WHEN a.nivel = 0 THEN 'ADMINISTRADOR'
             end as "NIVEL" 
       FROM consincomonitor.tb_usuario a
            JOIN consincomonitor.tb_permissaousuario b
                 ON a.sequsuario = b.sequsuario
            JOIN consincomonitor.tb_controle c
                 ON b.seqcontrole = c.seqcontrole
       WHERE a.ativo = 'S' and
             a.sequsuario <> 2 and
             c.modulo = 'ACRUXPDV';


