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
             a.nome = 'NAGILA GADELHA' and
             c.modulo = 'ACRUXPDV';
             


/*Retorna a variável que será usada com filtro no relatório do ERP*/
SELECT d.nome FROM consincomonitor.tb_usuario d
