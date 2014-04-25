package io.flp.core.web;
import javax.servlet.http.HttpServletRequest;
import javax.validation.Valid;

import io.flp.core.domain.Employee;

import org.springframework.roo.addon.web.mvc.controller.scaffold.RooWebScaffold;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jms.core.JmsTemplate;

@RequestMapping("/employees")
@Controller
@RooWebScaffold(path = "employees", formBackingObject = Employee.class)
public class EmployeeController {

    @Autowired
    private transient JmsTemplate jmsTemplate;

    public void sendMessage(Object messageObject) {
        jmsTemplate.convertAndSend(messageObject);
    }
    
    @RequestMapping(method = RequestMethod.POST, produces = "text/html")
    public String create(@Valid Employee employee, BindingResult bindingResult, Model uiModel, HttpServletRequest httpServletRequest) {
        if (bindingResult.hasErrors()) {
            populateEditForm(uiModel, employee);
            return "employees/create";
        }
        uiModel.asMap().clear();
        employeeService.saveEmployee(employee);
        sendMessage(employee.toJson());
        return "redirect:/employees/" + encodeUrlPathSegment(employee.getId().toString(), httpServletRequest);
    }
}
