package io.flp.core.web;
import io.flp.core.domain.Salary;
import org.springframework.roo.addon.web.mvc.controller.scaffold.RooWebScaffold;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@RequestMapping("/salarys")
@Controller
@RooWebScaffold(path = "salarys", formBackingObject = Salary.class)
public class SalaryController {
}
