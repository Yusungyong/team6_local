package dev.mvc.ExamTeam6;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.context.annotation.ComponentScan;

@SpringBootApplication
@ComponentScan(basePackages = {"dev.mvc"})
public class ExamTeam6Application {

	public static void main(String[] args) {
		SpringApplication.run(ExamTeam6Application.class, args);
	}

}
