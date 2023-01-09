package com.savetravels.controllers;

import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.DeleteMapping;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.PutMapping;

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
	
	@GetMapping("/expense/{id}")
	public String getOne(@PathVariable("id") Long id, Model model) {
		model.addAttribute("expense", expenseServ.getOne(id));
		return "viewExpense.jsp";
	}
	// This route queries the DB with a GET request which matches the ID of the expense queried
	@GetMapping("/expense/{id}/update")
	public String editExpense(@PathVariable("id") Long id, Model model) {
		model.addAttribute("expense", expenseServ.getOne(id));
		return "editExpense.jsp";
	}
	
	// This route actually sends the PUT request and updates the DB once it passes validation
	@PutMapping("/expense/{id}/update")
	public String update(@Valid @ModelAttribute("expense") Expense expense, BindingResult result, @PathVariable("id") Long id) {
		if(result.hasErrors()) {
			return "editExpense.jsp";
		} else {
			expense.setId(id);
			expenseServ.udpate(expense);
			return "redirect:/";
		}
	}
	
	@DeleteMapping("/expense/{id}/delete")
	public String delete(@PathVariable("id") Long id) {
		expenseServ.delete(id);
		return "redirect:/";
	}
}
