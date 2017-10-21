package com.br.caelum.fj27.testeSpringBoot;

import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

@RestController
@RequestMapping("/api")
public class CaelumController {
	
	@GetMapping
	public String teste(){
		return "Vai Corinthians";
	}
	
	
	public Modelo modeloTeste(){
		Modelo modelo = new Modelo();
		modelo.setTexto("TEXTO");
		modelo.setNumero(1234);
	}
}
