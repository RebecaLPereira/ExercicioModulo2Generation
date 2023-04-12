package com.helloWorld.helloWorld.controller;

import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

@RestController
@RequestMapping("/hello-world")
public class HelloWorldController {
	@GetMapping
	public String helloWorld() {
		return "Hello World!!!";
	}
	
	@GetMapping("/bsm")
	public String bsmGeneration() {
		return "Mentalidade de crescimento"
				+ "\nPersistência"
				+ "\nResponsabilidade pessoal"
				+ "\nOrientação ao futuro"
				+ "\nComunicação"
				+ "\nOrientação ao detalhe"
				+ "\nProatividade"
				+ "\nTrabalho em equipe";
	}
}
