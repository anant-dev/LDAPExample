/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.mindfire.service;

import com.mindfire.beans.Employee;
import com.mindfire.dao.EmployeeDao;
import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

/**
 *
 * @author anants
 */
@Service
public class EmployeeManagerImpl implements EmployeeManager {

    @Autowired
    EmployeeDao employeeDao;

    @Override
    public int saveEmp(Employee emp) {
        return employeeDao.saveEmp(emp);
    }

    @Override
    public int updateEmp(Employee emp) {
        return employeeDao.updateEmp(emp);
    }

    @Override
    public int deleteEmp(int emp_id) {
        return employeeDao.deleteEmp(emp_id);
    }

    @Override
    public Employee getEmpById(int id) {
        return employeeDao.getEmpById(id);
    }

    @Override
    public List<Employee> getEmployees() {
        return employeeDao.getEmployees();
    }

}
