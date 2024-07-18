package com.api.bb.models;

import com.api.bb.models.agregadas.Endereco;
import jakarta.persistence.Embedded;
import jakarta.persistence.Entity;
import lombok.Data;

@Data
@Entity
public class Pessoa extends AbstractEntity {
    private String nome;
    private String documento;
    private Boolean pessoaFisica;
    @Embedded
    private Endereco endereco;
}
