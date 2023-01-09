package com.savetravels.controllers;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;

import com.savetravels.models.Expense;
import com.savetravels.services.ExpenseService;

@Controller
public class HomeController {
	
	@Autowired
	private ExpenseService expenseServ;
	
	@GetMapping("/")
	public String index(@ModelAttribute("expense") Expense expense, Model model) {
		// Call the expenseServ to query the DB and return all expenses in a list
		// Then, make the list of expenses available to the web page
		model.addAttribute("allExpenses", expenseServ.getAll());
		return "index.jsp";
	}
}
