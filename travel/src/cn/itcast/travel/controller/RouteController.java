package cn.itcast.travel.controller;

import cn.itcast.travel.entity.Route;
import cn.itcast.travel.entity.User;
import cn.itcast.travel.service.RouteService;
import com.fasterxml.jackson.core.JsonProcessingException;
import com.fasterxml.jackson.databind.ObjectMapper;
import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.servlet.http.HttpServletRequest;
import java.util.List;

@Controller
@RequestMapping("/route")
public class RouteController {

    @Autowired
    private RouteService routeService;

    @RequestMapping("/findMostFavoriteRoutesByCid.do")
    @ResponseBody
    public String findMostFavoriteRoutesByCid(int cid) {
        List<Route> list = routeService.findMostFavoriteRoutesByCid(cid);
        ObjectMapper mapper = new ObjectMapper();
        String str = "";
        try {
            str = mapper.writeValueAsString(list);
        } catch (JsonProcessingException e) {
            e.printStackTrace();
        }
        return str;
    }

    @RequestMapping(value = "/findRouteByPage.do", produces = "application/json; charset=utf-8")
    @ResponseBody
    public String findRouteByPage(int cid, int pageNum) {
        PageHelper.startPage(pageNum, 6);
        List<Route> list = routeService.findAllRoutesByPage(cid);
        PageInfo<Route> info = new PageInfo<>(list);
        String str = "";
        ObjectMapper mapper = new ObjectMapper();
        try {
            str = mapper.writeValueAsString(info);
        } catch (Exception e) {
            e.printStackTrace();
        }

        return str;
    }

    @RequestMapping("/findRouteListByCid.do")
    @ResponseBody
    public String findRouteListByCid(int cid, int pageNum, String rname) {
        PageHelper.startPage(pageNum, 6);
        List<Route> list = routeService.findAllRoutesByCid(cid, rname);
        PageInfo<Route> info = new PageInfo<>(list);
        ObjectMapper mapper = new ObjectMapper();
        String str = "";
        try {
            str = mapper.writeValueAsString(info);
        } catch (Exception e) {
            e.printStackTrace();
        }
        return str;
    }

    @RequestMapping("/findRouteByRid.do")
    @ResponseBody
    public String findRouteByRid(int rid) {

        Route route = routeService.findRouteByRid(rid);

        ObjectMapper mapper = new ObjectMapper();
        String str = "";

        try {
            str = mapper.writeValueAsString(route);
        } catch (JsonProcessingException e) {
            e.printStackTrace();
        }

        return str;
    }

    @RequestMapping("/isFavoriteByRid")
    @ResponseBody
    public String isFavoriteByRid(int rid, HttpServletRequest request){
        User loginUser = (User)request.getSession().getAttribute("loginUser");
        Boolean flag ;
        if(loginUser == null){
            flag = false;
        }else{
            int uid = loginUser.getUid();
            //找到就返回true 找不到就返回false
            flag =  routeService.isFavoriteByUidAndRid(uid,rid);
            System.out.println(uid + "===" + rid);
        }
        ObjectMapper mapper = new ObjectMapper();
        String str = "";
        try {
            str =  mapper.writeValueAsString(flag);
        }catch (Exception e){
            e.printStackTrace();
        }
        return  str;
    }

}
