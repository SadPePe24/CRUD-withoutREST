package com.kissmepls.spring.mvc_hibernate_aop.dao;

import com.kissmepls.spring.mvc_hibernate_aop.entity.Employee;

import java.util.*;

public interface EmployeeDAO
{
    public List<Employee> getAllEmployees();

    public void saveEmployee(Employee employee);

    public Employee getEmployee(int id);

    public void deleyeEmployee(int id);
}
