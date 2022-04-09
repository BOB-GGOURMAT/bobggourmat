package com.bobggourmat.controller;

import java.io.Console;

//import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.bobggourmat.service.SearchService;

import lombok.RequiredArgsConstructor;
import lombok.extern.slf4j.Slf4j;

@Slf4j
@Controller
@RequiredArgsConstructor
public class SearchController {
	private final SearchService SearchService;
//	@Autowired
//	SearchService searchService;
	//home.jsp에 있는 form action 값 mapping으로 가져옴 => 둘 다 post임
	@RequestMapping(value = "/fn_search", method = RequestMethod.POST)
	public String search(Model model, @RequestParam(value = "keyword") String keyword) {
		//input type으로 받아온 keyword를 String keyword로 받아옴
		SearchService.search(model, keyword);
		return "fn_search";
	}
	

}
