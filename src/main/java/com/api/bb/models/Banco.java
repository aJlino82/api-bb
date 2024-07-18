package com.api.bb.models;

import jakarta.persistence.Entity;
import lombok.Data;

@Data
@Entity
public class Banco extends AbstractEntity {
    private String nome;
    private String codigoAgencia;
    private String conta;
}
