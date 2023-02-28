package com.example.ConexionBBDD;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;

@SpringBootApplication
public class ConexionBbddApplication {

	public static void main(String[] args) {
		SpringApplication.run(ConexionBbddApplication.class, args);

		System.out.println("App running at: http://localhost:7070");
	}

}
