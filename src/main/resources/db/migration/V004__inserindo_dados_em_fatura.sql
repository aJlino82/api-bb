INSERT INTO fatura (valor, data_vencimento, tipofatura, situacao_fatura, numero_documento, tipo_pagamento, conta_id,
                    convenio_id, pessoa_id, criado_em, atualizado_em)
VALUES ('100', CURRENT_DATE + INTERVAL '15 DAYS', 'RECEITA', 'NAO_PAGA', '71900', 'BOLETO', 1, 1, 1, CURRENT_TIMESTAMP,
        CURRENT_TIMESTAMP);

INSERT INTO fatura (valor, data_vencimento, tipofatura, situacao_fatura, numero_documento, tipo_pagamento, conta_id,
                    convenio_id, pessoa_id, criado_em, atualizado_em)
VALUES ('313.07', CURRENT_DATE + INTERVAL '15 DAYS', 'RECEITA', 'NAO_PAGA', '71901', 'BOLETO', 1, 1, 2,
        CURRENT_TIMESTAMP, CURRENT_TIMESTAMP);
