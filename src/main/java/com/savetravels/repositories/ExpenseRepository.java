package com.savetravels.repositories;

import java.util.List;

import org.springframework.data.repository.CrudRepository;

import com.savetravels.models.Expense;

public interface ExpenseRepository extends CrudRepository<Expense, Long> {
	public List<Expense> findAll();

}
