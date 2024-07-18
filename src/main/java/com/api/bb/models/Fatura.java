package com.api.bb.models;

import com.api.bb.models.enums.SituacaoFatura;
import com.api.bb.models.enums.TipoFatura;
import com.api.bb.models.enums.TipoPagamento;
import jakarta.persistence.*;
import lombok.Data;

import java.math.BigDecimal;
import java.time.LocalDate;

@Data
@Entity
public class Fatura extends AbstractEntity {

    private BigDecimal valor;
    private LocalDate dataVencimento;

    @Enumerated(EnumType.STRING)
    private TipoFatura tipofatura;
    @Enumerated(EnumType.STRING)
    private TipoPagamento tipoPagamento;
    @Enumerated(EnumType.STRING)
    private SituacaoFatura situacaoFatura;

    private String numeroDocumento;
    private String nossoNumero;

    @ManyToOne
    @JoinColumn(name = "conta_id")
    private Conta conta;
    @ManyToOne
    @JoinColumn(name = "convenio_id")
    private Convenio convenio;
    @ManyToOne
    @JoinColumn(name = "pessoa_id")
    private Pessoa pessoa;

}
