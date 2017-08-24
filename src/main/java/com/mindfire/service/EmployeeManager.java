/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.mindfire.service;

import com.mindfire.beans.Employee;
import java.util.List;

/**
 *
 * @author anants
 */
public interface EmployeeManager {

    public int saveEmp(Employee emp);

    public int updateEmp(Employee emp);

    public int deleteEmp(int emp_id);

    public Employee getEmpById(int id);

    public List<Employee> getEmployees();
}
