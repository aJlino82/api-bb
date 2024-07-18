package com.api.bb.models;

import jakarta.persistence.Entity;
import jakarta.persistence.JoinColumn;
import jakarta.persistence.ManyToOne;
import lombok.Data;

import java.math.BigDecimal;
@Data
@Entity
public class Convenio extends AbstractEntity {
    private String numeroContrato;
    private String carteira;
    private String variacaoCarteira;
    private BigDecimal jurosPorcentagem;
    private BigDecimal multaPorcentagem;

    @ManyToOne
    @JoinColumn(name = "conta_id")
    private Conta conta;
}
