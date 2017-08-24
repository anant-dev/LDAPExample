/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.mindfire.controller;

import com.mindfire.dao.EmployeeDaoImpl;
import com.mindfire.beans.Employee;
import com.mindfire.dao.EmployeeDao;
import com.mindfire.service.EmployeeManager;
import java.util.List;
import org.springframework.stereotype.Controller;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

/**
 *
 * @author anants
 */
@Controller
public class EmployeeController {

    @Autowired
    EmployeeManager employeeManger;

    @RequestMapping("/empform")
    public ModelAndView showform() {
        return new ModelAndView("empform", "command", new Employee());
    }

    @RequestMapping(value = "/save", method = RequestMethod.POST)
    public ModelAndView save(@ModelAttribute("emp") Employee emp) {
        employeeManger.saveEmp(emp);
        return new ModelAndView("redirect:/viewemp");//will redirect to viewemp request mapping  
    }

    /* It provides list of employees in model object */
    @RequestMapping("/viewemp")
    public ModelAndView viewemp() {
        List<Employee> list = employeeManger.getEmployees();
        return new ModelAndView("viewemp", "list", list);
    }

    /* It displays object data into form for the given id.  
     * The @PathVariable puts URL data into variable.*/
    @RequestMapping(value = "/editemp/{id}")
    public ModelAndView edit(@PathVariable int id) {
        Employee emp = employeeManger.getEmpById(id);
        return new ModelAndView("empeditform", "emp", emp);
    }

    /* It updates model object. */
    @RequestMapping(value = "/editsave", method = RequestMethod.POST)
    public ModelAndView editsave(@ModelAttribute("emp") Employee emp) {
        employeeManger.updateEmp(emp);
        return new ModelAndView("redirect:/viewemp");
    }

    /* It deletes record for the given id in URL and redirects to /viewemp */
    @RequestMapping(value = "/deleteemp/{id}", method = RequestMethod.GET)
    public ModelAndView delete(@PathVariable int id) {
        employeeManger.deleteEmp(id);
        return new ModelAndView("redirect:/viewemp");
    }

    @RequestMapping(value = "/login", method = RequestMethod.GET)
    public ModelAndView login(@RequestParam(value = "error", required = false) String error,
            @RequestParam(value = "logout", required = false) String logout) {

        ModelAndView model = new ModelAndView();
        if (error != null) {
            model.addObject("error", "Invalid username and password!");
        }

        if (logout != null) {
            model.addObject("msg", "You've been logged out successfully.");
        }
        model.setViewName("login");

        return model;

    }
}
