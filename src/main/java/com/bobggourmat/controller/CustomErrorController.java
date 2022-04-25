package com.bobggourmat.controller;

import java.util.Map;
import java.util.Objects;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.boot.web.servlet.error.ErrorController;
import org.springframework.http.HttpStatus;
import org.springframework.http.MediaType;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

//오류 발생시 컨트롤러
@Controller
public class CustomErrorController implements ErrorController   {
    //오류처리
    @RequestMapping(value = "/error")
    public String handleNoHandlerFoundException(HttpServletResponse response, HttpServletRequest request) {
        int status = response.getStatus();
		
        System.out.println(status);  //오류 상태
        System.out.println(request.getRequestURI());  //요청 주소
    	
        return "error";
    }
}