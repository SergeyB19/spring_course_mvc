package com.zaurtregulov.spring.mvc;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import javax.validation.*;
import javax.servlet.http.HttpServletRequest;

@Controller
@RequestMapping("/employee")
public class MyController {
    @RequestMapping("/")
    public String showFirstView() {
        return "first-view";
    }

    @RequestMapping("/askDetails")
    public String askEmployeeDetails(Model model) {
     /*   Employee emp = new Employee();
        emp.setName("Ivan");
        emp.setSurname("Petrov");
        emp.setSalary(500)*/;
        model.addAttribute("employee", /*emp*/ new Employee());
        return "ask-emp-details-view";
    }

 /*   @RequestMapping("/showDetails")
    public String showEmpDetails() {
        return "show-emp-details-view";
    }*/

   /* @RequestMapping("/showDetails")
    public String showEmpDetails(HttpServletRequest request, Model model) {
        String empName = request.getParameter("employeeName");
        empName = "Mr. " + empName;
        model.addAttribute("nameAttribute", empName);
        model.addAttribute("description"," - udemy instructor");

        return "show-emp-details-view";
    }*/

   /* @RequestMapping("/showDetails")
    public String showEmpDetails(@RequestParam("employeeName") String empName
            , Model model) {
                *//*RequestParam заменяет за кулисами request.getParameter("employeeName")
        String empName = request.getParameter("employeeName");*//*
        empName = "Mr. " + empName + " !";
        model.addAttribute("nameAttribute", empName);
//        model.addAttribute("description", " - udemy instructor");

        return "show-emp-details-view";
    }*/

    @RequestMapping("/showDetails")
    public String showEmpDetails(@Valid @ModelAttribute("employee") Employee emp, BindingResult bindingResult) {
//        System.out.println("surname length = " + emp.getSurname().length());


        /*@Valid and BindingResult используем в связке*/
        if (bindingResult.hasErrors()) {/*если валидация(проверка) не прошла, возвращаем view*/
            return "ask-emp-details-view";
        } else {
            return "show-emp-details-view"; /*если успешно тогда выводим информацию о работнике*/
        }
   /*     String name = emp.getName();
        emp.setName("Mr " + name);
        String surname = emp.getSurname();
        emp.setSurname(surname+ "!");
        int salary = emp.getSalary();
        emp.setSalary(salary*10);*/
    }

}
