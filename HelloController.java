package org.generation.Hello.controller;


import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;


@RestController // informa que é um controller 
@RequestMapping ("/helloword") // Informa o endereço da web
public class HelloController {
	
	
	@GetMapping // pega informação do método e exibe 
	public String helloword() {
		return "Hello Word!";
		}
	
	
	@GetMapping ("/mentalidades_BMS")// pega informação do método e exibe 
	public String mentalidades_BMS() {
		return "Mentalidades Generation\n  "
				+ "01 - Persistência - "
				+ "02 - Orientação aos detalhes - \"\r\n"
				+ "03 - Mentalidade de crescimento - \"\r\n"
				+ "04 - Responsabilidade Pessoal - \"\r\n"
				+ "05 - Dar e Receber - \"\r\n"
				+ "06 - Proatividade - \"\r\n"
				+ "07 - Trabalho em Equipe - \"\r\n"
				+ "08 - Comunicação";
			}
	
	@GetMapping ("/Obejtivos")// pega informação do método e exibe 
	public String Obejtivos() {
		return "Objetivos semanais! \n  "
				+ " - Conseguir entregar toda as atividades"
				+ " - Conseguir rever as aulas gravadas que a Kath enviou para fixar o conteudo - "
				+ " - Entrar no Bootcamp todos os dias no horario - "
				+ " - Entregar as atividades dentro do prazo informado - ";
		
			
	
	}
}

	

