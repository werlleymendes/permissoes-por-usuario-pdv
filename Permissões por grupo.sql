SELECT a.seqgrupo, a.nome, b.nroempresa, c.uititle funcao
       FROM consincomonitor.tb_grupo a
            JOIN consincomonitor.tb_permissaogrupo b
                 ON a.seqgrupo = b.seqgrupo
            JOIN consincomonitor.tb_controle c
                 ON b.seqcontrole = c.seqcontrole
       WHERE a.ativo = 'S' and  
             c.modulo = 'ACRUXPDV'
       ORDER BY a.nome;

