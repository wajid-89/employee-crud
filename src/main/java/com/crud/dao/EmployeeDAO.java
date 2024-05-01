package com.crud.dao;

import java.util.List;

import com.crud.models.Employee;


public interface EmployeeDAO {
	public Integer addEmployee(Employee employee );

	public Integer updateEmployee(Employee employee);

	public Integer deleteEmployee(int employeeId);

	public List<Employee> getAll();
	
	public Employee getEmployee(int employeeId);

}
