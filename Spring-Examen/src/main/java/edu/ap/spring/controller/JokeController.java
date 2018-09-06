package edu.ap.spring.controller;

import edu.ap.spring.jpa.Joke;
import edu.ap.spring.jpa.JokeRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Scope;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;

@Controller
@Scope("session")
public class JokeController {

    @Autowired
    JokeRepository jokeRepository;

   public JokeController() {
   }
       
   @RequestMapping(value = "joke", method = RequestMethod.POST)
   public String SetJoke(@RequestParam("firstName") String firstName,
                         @RequestParam("lastName") String lastName,
                         @RequestParam("joke") String joke,
                         Model model) {
        model.addAttribute("firstName", firstName);
        model.addAttribute("lastName", lastName);
        model.addAttribute("joke", joke);

        jokeRepository.save(new Joke(firstName, lastName));

	   return "result";
   }
		   
   @PostMapping("/joke_post")
   public String joke_post() {
	   return "";
   }

   @RequestMapping(value = "/List", method = RequestMethod.GET)
   public String list(Model model){
       model.addAttribute("jokes", jokeRepository.findAll());

       return "list";
   }

   @RequestMapping(value = "/", method = RequestMethod.GET)
   public String DefaultJoke() {
	   return "joke";
   }
}