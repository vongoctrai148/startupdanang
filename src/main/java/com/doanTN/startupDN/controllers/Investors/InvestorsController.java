package com.doanTN.startupDN.controllers.Investors;



import com.doanTN.startupDN.entities.InvestedProjects;
import com.doanTN.startupDN.entities.Projects;
import com.doanTN.startupDN.entities.Users;
import com.doanTN.startupDN.services.*;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.PageRequest;
import org.springframework.data.domain.Pageable;
import org.springframework.mail.SimpleMailMessage;
import org.springframework.mail.javamail.JavaMailSender;
import org.springframework.stereotype.Component;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;

import javax.servlet.http.HttpSession;
import java.util.List;


@Controller
public class InvestorsController {
    @Autowired
    private InvestorsServices investorsServices;
    @Autowired
    private ProjectService projectService;
    @Autowired
    private InvestorsProjectServices investorsProjectServices;
    @Autowired
    JavaMailSender javaMailSender;


    public static final int PAGE_SIZE = 8;
    @GetMapping("/investor")
    public String getListInvestor(Model model, HttpSession session,
                                 @RequestParam(value = "page", defaultValue = "1") int page) {
        Pageable pageable= PageRequest.of(page-1,PAGE_SIZE);
        session.getAttribute("user");
        model.addAttribute("investors", investorsServices.getAllInvestors(pageable));
        model.addAttribute("pageSize",(investorsServices.getTotalInvestor()/PAGE_SIZE)+1);
        return "investor";
    }

    @GetMapping("/investor/details/{id}")
    public String deDetailsInvestors(@PathVariable("id") Long investorsId, Model model) {
            model.addAttribute("details", investorsServices.getInvestorsById(investorsId));
            return "investorsdetails";

    }
    @PostMapping("/investor/registration")
    public String getRegistrationProject( HttpSession session,@RequestParam("id") Long id,
                                          @RequestParam("from") String from,@RequestParam("to") String to,
                                          @RequestParam("subject") String subject,@RequestParam("body") String body) {
        Users user = (Users) session.getAttribute("user");
        if (("").equals(user) || user == null) {
            return "redirect:/login";
        }
        investorsProjectServices.registration(user,projectService.getProjectById(id));
        SimpleMailMessage message = new SimpleMailMessage();
        message.setFrom(from);
        message.setTo(to);
        message.setSubject(subject);
        message.setText(body);
        javaMailSender.send(message);
        return "redirect:/startup/projectDetail/"+id;
    }

    @GetMapping("investedProjects")
    public List<InvestedProjects> getRegistrationProject(){
       return investorsProjectServices.getAll();
    }
}
