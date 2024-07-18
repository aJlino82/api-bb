package com.api.bb.models.agregadas;

import jakarta.persistence.Column;
import jakarta.persistence.Embeddable;

@Embeddable
public class Endereco {

    @Column(name = "endereco_logradouro")
    public String logradouro;
    @Column(name = "endereco_numero")
    public String numero;
    @Column(name = "endereco_complemento")
    public String complemento;
    @Column(name = "endereco_bairro")
    public String bairro;
    @Column(name = "endereco_cidade")
    public String cidade;
    @Column(name = "endereco_uf")
    public String uf;
    @Column(name = "endereco_cep")
    public String cep;
}
