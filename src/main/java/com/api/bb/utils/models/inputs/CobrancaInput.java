package com.api.bb.utils.models.inputs;

import lombok.Data;

import java.math.BigDecimal;

@Data
public class CobrancaInput {

    private Long numeroConvenio;
    private Integer numeroCarteira;
    private Integer numeroVariacaoCarteira;
    private Integer codigoModalidade;
    private String dataEmissao;
    private String dataVencimento;
    private BigDecimal valorOriginal;
    private BigDecimal valorAbatimento;
    private Long quantidadeDiasProtesto;
    private Integer quantidadeDiasNegativacao;
    private Integer orgaoNegativador;
    private String indicadorAceiteTituloVencido;
    private Integer numeroDiasLimiteRecebimento;


}
