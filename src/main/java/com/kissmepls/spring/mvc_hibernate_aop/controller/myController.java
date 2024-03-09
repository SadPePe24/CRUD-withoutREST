package com.kissmepls.spring.mvc_hibernate_aop.controller;

import com.kissmepls.spring.mvc_hibernate_aop.dao.EmployeeDAO;
import com.kissmepls.spring.mvc_hibernate_aop.entity.Detail;
import com.kissmepls.spring.mvc_hibernate_aop.entity.Employee;
import com.kissmepls.spring.mvc_hibernate_aop.service.DetailService;
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

    @Autowired
    private DetailService detailService;

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


    @RequestMapping("/saveEmployee")
    public String saveEmployee(@ModelAttribute("employee") Employee employee,
                               @RequestParam("detail.city") String city,
                               @RequestParam("detail.phone") String phoneNumber,
                               @RequestParam("detail.EMail") String eMail,
                               @RequestParam("detail.birthDay") String birthDay,
                               @RequestParam("detail.hiredDay") String hiredDay)
    {
//        Detail details = new Detail(city, phoneNumber, eMail, birthDay, hiredDay);
//        employee.setDetail(details);
//        employeeService.saveEmployee(employee);

//        Detail detail = employee.getDetail();
//        detail.setCity(city);
//        detail.setPhone(phoneNumber);
//        detail.setEMail(eMail);
//        detail.setBirthDay(birthDay);
//        detail.setHiredDay(hiredDay);
//        employee.setDetail(detail);
//        employeeService.saveEmployee(employee);

        employee.getDetail().setCity(city);
        employee.getDetail().setPhone(phoneNumber);
        employee.getDetail().setEMail(eMail);
        employee.getDetail().setBirthDay(birthDay);
        employee.getDetail().setHiredDay(hiredDay);
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

    @RequestMapping("/deleteEmployee")
    public String deleteEmployee(@RequestParam("empId") int id)
    {
        employeeService.deleteEmployee(id);
        return "redirect: /";
    }
// ****************************************************************************

    @RequestMapping("/details")
    public String showAllDetails(Model model)
    {

        List<Detail> allDetails = detailService.getAllDetails();
        model.addAttribute("allDetails", allDetails);

        return "all-details";
    }
}
