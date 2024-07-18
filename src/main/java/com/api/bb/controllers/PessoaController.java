package com.api.bb.controllers;

import com.api.bb.models.Pessoa;
import com.api.bb.repositories.PessoaRepository;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import java.util.List;

@RestController
@RequestMapping("/pessoas")
public class PessoaController {

    private final PessoaRepository pessoaRepository;

    public PessoaController(PessoaRepository pessoaRepository) {
        this.pessoaRepository = pessoaRepository;
    }

    @GetMapping
    private ResponseEntity<List<Pessoa>> getPessoas() {
        return ResponseEntity.ok(pessoaRepository.findAll());
    }
}
