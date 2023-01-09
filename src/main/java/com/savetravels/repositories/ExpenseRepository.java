package com.savetravels.repositories;

import org.springframework.data.repository.CrudRepository;

import com.savetravels.models.Expense;

public interface ExpenseRepository extends CrudRepository<Expense, Long> {

}
