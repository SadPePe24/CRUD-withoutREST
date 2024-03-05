package com.kissmepls.spring.mvc_hibernate_aop.controller;

import com.kissmepls.spring.mvc_hibernate_aop.dao.EmployeeDAO;
import com.kissmepls.spring.mvc_hibernate_aop.entity.Detail;
import com.kissmepls.spring.mvc_hibernate_aop.entity.Employee;
import com.kissmepls.spring.mvc_hibernate_aop.service.EmployeeService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import java.util.List;

@Controller
public class myController
{
    @Autowired
    private EmployeeService employeeService;

    @RequestMapping("/")
    public String showAllEmployees(Model model)
    {

        List<Employee> allEmployees = employeeService.getAllEmployees();
        model.addAttribute("allEmps", allEmployees);

        return "all-employees";
    }

    @RequestMapping("/addNewEmployee")
    public String addNewEmployee(Model model)
    {
        Employee employee = new Employee();
        model.addAttribute("employee", employee);
        return "employee-info";
    }

//    @RequestMapping("/saveEmployee")
//    public String saveEmployee(@ModelAttribute("employee") Employee employee, @RequestParam ""
//    {
//        employeeService.saveEmployee(employee);
//
//        return "redirect: /";
//    }

    @RequestMapping("/saveEmployee")
    public String saveEmployee(@ModelAttribute("employee") Employee employee,
                               @RequestParam("city") String city,
                               @RequestParam("phone") String phoneNumber,
                               @RequestParam("eMail") String eMail,
                               @RequestParam("birthDay") String birthDay,
                               @RequestParam("hiredDay") String hiredDay) {
        Detail details = new Detail(city, phoneNumber, eMail, birthDay, hiredDay);
        employee.setDetail(details);
        employeeService.saveEmployee(employee);
        return "redirect:/";
    }

    @RequestMapping("/updateInfo")
    public String updateEmployee(@RequestParam("empId") int id, Model model)
    {
        Employee employee = employeeService.getEmployee(id);

        model.addAttribute("employee", employee);
        return "employee-info";
    }

    @RequestMapping ("/deleteEmployee")
    public String deleteEmployee(@RequestParam ("empId") int id)
    {
        employeeService.deleteEmployee(id);
        return "redirect: /";
    }
}
