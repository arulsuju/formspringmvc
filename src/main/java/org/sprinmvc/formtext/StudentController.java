package org.sprinmvc.formtext;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/")
public class StudentController {

    @RequestMapping("/")
    public String showForm(Model model)
    {
        Student student=new Student();
        model.addAttribute("student",student);
        return "index";
    }

    @RequestMapping("/formSubmit")
    public String processForm(@ModelAttribute("student") Student student)
    {

        return "result";
    }
}
