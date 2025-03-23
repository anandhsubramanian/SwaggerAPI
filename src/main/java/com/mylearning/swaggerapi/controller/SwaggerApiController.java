package com.mylearning.swaggerapi.controller;

import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RestController;

@RestController
public class SwaggerApiController {
	
	@GetMapping("/getMessage")
	public String getMessage() {
		return "Welcome to SpringBoot swaggerAPI"; 
	}

}
