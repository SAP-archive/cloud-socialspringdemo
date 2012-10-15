package com.sap.netweaver.cloud.samples.springsocialdemo.web;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.SessionAttributes;
import org.springframework.web.servlet.ModelAndView;

@Controller
@SessionAttributes({"username", "connections" })
public class HomeController 
{	
	@RequestMapping("/")
	public ModelAndView home(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException 
    {
        ModelAndView model = new ModelAndView("home");
		
        model.addObject("username", request.getUserPrincipal().getName());
        
		return model;
    }

}
