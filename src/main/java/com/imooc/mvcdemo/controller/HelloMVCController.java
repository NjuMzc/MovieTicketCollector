package main.java.com.imooc.mvcdemo.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

/**
 * Created by NjuMzc on 2017/2/25.
 */

@Controller
@RequestMapping("*")
public class HelloMVCController {

    @RequestMapping("/home")
    public String helloMVC(){
        System.out.println("Receive Request!");
        return "home";
    }


}
