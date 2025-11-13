SELECT a.seqgrupo, a.nome, b.nroempresa, c.uititle funcao, a.percdescmaximo
       FROM consincomonitor.tb_grupo a
            JOIN consincomonitor.tb_permissaogrupo b
                 ON a.seqgrupo = b.seqgrupo
            JOIN consincomonitor.tb_controle c
                 ON b.seqcontrole = c.seqcontrole
       WHERE a.ativo = 'S' and
             a.nome = 'FISCAIS DE CAIXA LOJA 01' and
             c.modulo = 'ACRUXPDV'
       ORDER BY a.nome;
       

/*Variavel usada no erp para filtrar um grupo*/       
select d.nome from consincomonitor.tb_grupo d;
