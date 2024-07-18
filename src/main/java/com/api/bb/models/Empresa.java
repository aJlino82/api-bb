package com.api.bb.models;

import com.api.bb.models.agregadas.Endereco;
import jakarta.persistence.Embedded;
import jakarta.persistence.Entity;
import lombok.Data;

@Data
@Entity
public class Empresa extends AbstractEntity {
    private String razaoSocial;
    private String cnpj;
    @Embedded
    private Endereco endereco;
}
