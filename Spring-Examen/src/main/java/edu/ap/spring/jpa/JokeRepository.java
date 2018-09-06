package edu.ap.spring.jpa;

import org.springframework.data.repository.CrudRepository;

public interface JokeRepository extends CrudRepository<Joke, Long> {

}
