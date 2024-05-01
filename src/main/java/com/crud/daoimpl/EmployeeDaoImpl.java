package com.crud.daoimpl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.orm.hibernate5.HibernateTemplate;
import org.springframework.stereotype.Component;
import org.springframework.transaction.annotation.Transactional;

import com.crud.dao.EmployeeDAO;
import com.crud.models.Employee;

@Component
public class EmployeeDaoImpl implements EmployeeDAO{
  
	@Autowired
	private HibernateTemplate hibernateTemplate;
	
	Integer row=null;
	@Override
	@Transactional
	public Integer addEmployee(Employee employee ) {
		this.hibernateTemplate.saveOrUpdate(employee);
		row=1;
		return row;
	}

	@Override
	@Transactional
	public Integer  updateEmployee(Employee employee) {
		this.hibernateTemplate.update(employee);
		row=1;
		return row;
	}

	
	@Override
	@Transactional
	public Integer deleteEmployee(int employeeId) {
		Employee employee=this.hibernateTemplate.get(Employee.class,  employeeId);
		this.hibernateTemplate.delete(employee);
		row=1;
		return row;
	}

	@Override
	public List<Employee> getAll() {
		List<Employee> list=this.hibernateTemplate.loadAll(Employee.class);
		return list;
	}

	@Override
	@Transactional
	public Employee getEmployee(int employeeId) {
		
		return this.hibernateTemplate.get(Employee.class,employeeId);
	}

}
