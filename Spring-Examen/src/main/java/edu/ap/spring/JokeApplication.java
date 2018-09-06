package edu.ap.spring;

import edu.ap.spring.jpa.Joke;
import edu.ap.spring.jpa.JokeRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.CommandLineRunner;
import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.context.ApplicationContext;
import org.springframework.context.annotation.Bean;

@SpringBootApplication
public class JokeApplication {
    @Autowired
    JokeRepository repository;

	public static void main(String[] args) {
		SpringApplication.run(JokeApplication.class, args);
	}
	
	@Bean
    public CommandLineRunner commandLineRunner(ApplicationContext ctx) {
		return (args) -> {
            Joke joke1 = new Joke("Philippe", "Possemiers");
            repository.save(joke1);
		};
    }
}
