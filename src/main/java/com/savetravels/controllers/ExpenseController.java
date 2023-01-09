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
@RequestMapping("expense")
public class ExpenseController {
	
	@Autowired
	ExpenseService expenseServ;
}
