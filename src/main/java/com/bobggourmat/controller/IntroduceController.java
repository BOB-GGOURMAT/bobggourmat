package com.bobggourmat.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import lombok.RequiredArgsConstructor;
import lombok.extern.slf4j.Slf4j;

@Slf4j
@Controller
@RequiredArgsConstructor
public class IntroduceController {
	 @RequestMapping(value = "/introduce")
	   public String introduce() {
		   return "introduce";
	   }
	   

}
