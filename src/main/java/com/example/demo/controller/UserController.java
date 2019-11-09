package com.example.demo.controller;

import com.example.demo.bean.User;
import com.example.demo.service.UserService;
import org.apache.shiro.SecurityUtils;
import org.apache.shiro.authc.AuthenticationException;
import org.apache.shiro.authc.UsernamePasswordToken;
import org.apache.shiro.authz.AuthorizationException;
import org.apache.shiro.authz.annotation.RequiresPermissions;
import org.apache.shiro.authz.annotation.RequiresRoles;
import org.apache.shiro.subject.Subject;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.servlet.ModelAndView;

import java.util.HashMap;
import java.util.Map;

@Controller
@RequestMapping("/userApi")
public class UserController {
    @Autowired
    private UserService userService;


    /**
     * 跳转注册页面
     * @return
     */
    @RequestMapping("/register")
    public String register(){
        return "register";
    }

    /**
     * 跳转登录页面
     * @return
     */
    @RequestMapping("/login")
    public String login(){
        return "login";
    }


    /**
     * 注册实现
     * @param user
     * @return
     */
    @RequestMapping("/registerAction")
    public String registerAction(User user){
        try{
            userService.register(user);
        }catch (Exception e){
            e.printStackTrace();
        }
        return "login";

    }

    /**
     * 登录方法实现
     * @param user
     * @return
     */
    @PostMapping("/loginAction")
    public ModelAndView login(User user) {
        Map<String,String> map=new HashMap<>();
        ModelAndView modelAndView=new ModelAndView();
        //添加用户认证信息
        Subject subject = SecurityUtils.getSubject();
        UsernamePasswordToken usernamePasswordToken = new UsernamePasswordToken(
                user.getUserName(),
                user.getPassword()
        );
        try {
            //进行验证，这里可以捕获异常，然后返回对应信息
            subject.login(usernamePasswordToken);
            map.put("message","密码正确");
        } catch (AuthenticationException e) {
            e.printStackTrace();
            map.put("message","密码错误！");
        } catch (AuthorizationException e) {
            map.put("message","没有权限");
        }
        modelAndView.addAllObjects(map);
        modelAndView.setViewName("index");
        return modelAndView;
    }



}
