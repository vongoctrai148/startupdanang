package com.doanTN.startupDN.controllers.Login;

import com.doanTN.startupDN.entities.Users;
import com.doanTN.startupDN.forms.LoginForm;
import com.doanTN.startupDN.services.UserService;
import org.springframework.beans.factory.annotation.Autowired;
//import org.springframework.security.core.Authentication;
//import org.springframework.security.core.context.SecurityContextHolder;
//import org.springframework.security.web.authentication.logout.SecurityContextLogoutHandler;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import javax.validation.Valid;

@Controller
public class LoginController {
    @Autowired
    private UserService userService;

    @GetMapping("/login")
    public String getLogin(Model model, HttpSession session){
        Users user = (Users) session.getAttribute("user");
        if(user != null){
            return "redirect:/startup/listProject";
        }
        model.addAttribute("loginForm", new LoginForm());
        return "login";
    }
//    @GetMapping("/page404")
//    public String getErrorPage(){
//        return "page404";
//    }
//
//    @GetMapping("/logout")
//    public String getLogout(HttpServletRequest request, HttpServletResponse response){
//        Authentication auth = SecurityContextHolder.getContext().getAuthentication();
//        if (auth != null) {
//            new SecurityContextLogoutHandler().logout(request, response, auth);
//        }
//        return "redirect:/login";
//    }
    @PostMapping("/login")
    public String postLogin(Model model, @Valid @ModelAttribute("loginForm") LoginForm loginForm, BindingResult bindingResult,
    HttpSession session){
        if(bindingResult.hasErrors()){
            model.addAttribute("error");
        }
        String username = loginForm.getUsername().trim();
        String password = loginForm.getPassword().trim();
        if(userService.loginUser(username, password) == 1){
            Users user = userService.getUserByUserName(username);
            session.setAttribute("user", user);
            if(("startup").equals(user.getRoles())){
                return "redirect:/startup/listProject";
            } else if (("investors").equals(user.getRoles())) {
                return "redirect:/investor";
            } else if (("admin").equals(user.getRoles())) {
                return "redirect:/admin/";
            }
        }
        model.addAttribute("message", "Sai tên đăng nhập hoặc mật khẩu");
        return "login";
    }

    @GetMapping("/logout")
    public String logout(HttpServletRequest request) {
        HttpSession session = request.getSession(false);
        if (session != null) {
            session.invalidate();
        }
        return "/login";
    }


}
