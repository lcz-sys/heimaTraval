package cn.itcast.travel.controller;

import cn.itcast.travel.entity.User;
import cn.itcast.travel.service.UserService;
import com.fasterxml.jackson.core.JsonProcessingException;
import com.fasterxml.jackson.databind.ObjectMapper;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import java.util.HashMap;
import java.util.Map;

@Controller
@RequestMapping("/user")
public class UserController {

    @Autowired
    private UserService userService;

    @RequestMapping("/register.do")
    @ResponseBody
    public String register(User user ,String code ,HttpServletRequest request){
        String vcode = (String)request.getSession().getAttribute("vcode");
        ObjectMapper mapper = new ObjectMapper();
        String str = "";
        Map<String , Object> map = new HashMap<>();
        //判断验证码是否正确
        try{
            if(!vcode.equalsIgnoreCase(code)){
                map.put("status", "error");
                map.put("msg", "验证码错误");
                //如果不正确 发送false
                str = mapper.writeValueAsString(map);
                return  str;
            }
            //检查用户名是否存在 不存在就是false  存在就是为true
            boolean flag = userService.checkUsernameExist(user.getUsername());
            if(flag){
                // request.getSession().setAttribute("msg", "账号已经存在");
                map.put("status", "error");
                map.put("msg", "账号已经存在");
                str = mapper.writeValueAsString(map);
                return str;

            }
            //信息都正确了之后 添加数据
            userService.saveUser(user);
            //添加成功 修改状态为success
            map.put("status", "success");
            str = mapper.writeValueAsString(map);
        }catch (Exception e){
            e.printStackTrace();
        }
        return str;
    }

    @RequestMapping("/login.do")
    @ResponseBody
    public String login(User user,String code,HttpServletRequest request){
        Map<String, String> map = new HashMap<>();
        ObjectMapper mapper = new ObjectMapper();
        String str = "";
        //判断验证码是否正确
        String vcode = (String) request.getSession().getAttribute("vcode");
        if(!vcode.equalsIgnoreCase(code)){
            map.put("status", "error");
            map.put("msg", "验证码有误！");
        }else{
            //flag 为true 代表正常登陆 false 就代表 登陆失败 账号或者密码有误
            boolean flag = userService.login(user);

            if(flag){
                map.put("status", "success");
                map.put("msg", "登陆成功");
                //将登录用户信息放在session域
                request.getSession().setAttribute("loginUser",user);
            }else{
                map.put("status", "error");
                map.put("msg", "登陆失败，账号或者密码有误");
            }
        }
        try {
            str = mapper.writeValueAsString(map);
        } catch (JsonProcessingException e) {
            e.printStackTrace();
        }
        return  str;

    }

    @RequestMapping("/getLoginUser.do")
    @ResponseBody
    public String getLoginUser(HttpServletRequest request){
        User loginUser =(User) request.getSession().getAttribute("loginUser");
        ObjectMapper mapper = new ObjectMapper();
        String str = "";
        try {
            if(loginUser == null){
                str =  mapper.writeValueAsString(false);
            }else{
                str =  mapper.writeValueAsString(loginUser);
            }
        } catch (JsonProcessingException e) {
            e.printStackTrace();
        }
        return  str;
    }

    @RequestMapping("/logout.do")
    public String logout(HttpServletRequest request){
        //立即销毁session
        request.getSession().invalidate();
        //跳转到登陆页面
        return "redirect:/login.jsp";
    }



}
