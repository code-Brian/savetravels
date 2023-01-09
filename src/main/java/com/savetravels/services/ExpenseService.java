package com.savetravels.services;

import java.util.List;
import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.savetravels.models.Expense;
import com.savetravels.repositories.ExpenseRepository;

@Service
public class ExpenseService {
	@Autowired
	private ExpenseRepository expenseRepo;
	
	public Expense create(Expense e) {
		return expenseRepo.save(e);
	}
	
	public Expense getOne(Long id) {
		Optional<Expense> optExpense = expenseRepo.findById(id);
		if(optExpense.isPresent()) {
			return optExpense.get();
		} else {
			return null;
		}
	}
	
	public List<Expense> getAll() {
		return expenseRepo.findAll();
	}
	
	public Expense udpate(Expense e) {
		return expenseRepo.save(e);
	}
	
	public void delete(Long id) {
		expenseRepo.deleteById(id);
	}
	
	

}
