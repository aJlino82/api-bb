package com.api.bb.models;

import jakarta.persistence.Entity;
import jakarta.persistence.JoinColumn;
import jakarta.persistence.ManyToOne;
import lombok.Data;

@Data
@Entity
public class Conta extends AbstractEntity {

    private String agencia;
    private String conta;
    private String digitoAgencia;
    private String digitoConta;

    @ManyToOne
    @JoinColumn(name = "banco_id")
    private Banco banco;

    @ManyToOne
    @JoinColumn(name = "empresa_id")
    private Empresa empresa;
}
