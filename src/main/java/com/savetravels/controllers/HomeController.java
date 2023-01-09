package com.savetravels.controllers;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;

import com.savetravels.models.Expense;
import com.savetravels.services.ExpenseService;

@Controller
public class HomeController {
	
	@Autowired
	private ExpenseService expenseServ;
	
	@GetMapping("/")
	public String index(@ModelAttribute("expense") Expense expense) {
		return "index.jsp";
	}
}
