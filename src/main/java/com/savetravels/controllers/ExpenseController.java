package com.savetravels.controllers;

import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import com.savetravels.models.Expense;
import com.savetravels.services.ExpenseService;

@Controller
public class ExpenseController {
	
	@Autowired
	ExpenseService expenseServ;
	
	@GetMapping("/expense/create")
	public String newExpense(@ModelAttribute("expense") Expense expense) {
		// using model attribute creates a new, blank drink object. Good in this case, but see the edit case below for why it isn't.
		return "index.jsp";
	}
	
	@PostMapping("/expense/create")
	public String create(@Valid @ModelAttribute("expense") Expense expense, BindingResult result) {
		if(result.hasErrors()) {
			return "index.jsp";
		} else {
			expenseServ.create(expense);
			return "redirect:/";
		}
		
	}
}
