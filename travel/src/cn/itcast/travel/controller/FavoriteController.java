package cn.itcast.travel.controller;

import cn.itcast.travel.entity.Favorite;
import cn.itcast.travel.entity.Route;
import cn.itcast.travel.entity.User;
import cn.itcast.travel.service.FavoriteService;
import cn.itcast.travel.service.RouteService;
import com.fasterxml.jackson.core.JsonProcessingException;
import com.fasterxml.jackson.databind.ObjectMapper;
import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;
import org.springframework.beans.factory.ObjectFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.servlet.http.HttpServletRequest;
import java.util.List;

@Controller
@RequestMapping("/favorite")
public class FavoriteController {

    @Autowired
    private FavoriteService favoriteService;

    @Autowired
    private RouteService routeService;

    @RequestMapping("/addFavorite.do")
    @ResponseBody
    public String addFavorite(int rid, HttpServletRequest request) {
        User user = (User) request.getSession().getAttribute("loginUser");
        ObjectMapper mapper = new ObjectMapper();
        String str = "";
        try {
            if (user == null) {
                str = mapper.writeValueAsString(false);
            } else {
                //添加收藏
                favoriteService.addFavorite(user, rid);
                //返回route的count(数量)
                Route route = routeService.findRouteByRid(rid);
                str = mapper.writeValueAsString(route.getCount());

            }
        } catch (Exception e) {
            e.printStackTrace();
        }

        return str;
    }

    @RequestMapping("/findFavoriteByPage.do")
    @ResponseBody
    public String findFavoriteByPage(int pageNum, HttpServletRequest request) {
//        a) 定义参数，接收前端发送过来的pageNum，以及request
//        b) 通过request获取session对象，获取session域中的loginUser
        User user = (User) request.getSession().getAttribute("loginUser");
//        c) 创建ObjectMapper，把最后的结果转化为json格式的数据
        ObjectMapper mapper = new ObjectMapper();
//        d) 创建String类型的str ， 接收结果
        String str = "";
//        e) 判断当前的loginUser
//        1.	如果当前的loginUser为空，就把false转化为json，str接收
//        2.	如果当前的loginUser 不为空，继续

        try {
            if (user == null) {
                str = mapper.writeValueAsString(false);
            } else {
//        f) 使用PageHelper设置当前页以及页面大小
                PageHelper.startPage(pageNum, 4);
//        g) 调用FavoriteService的findAllFavoriteByUid的方法，传递uid过去获取list集合
                List<Favorite> list = favoriteService.findAllFavoriteByUid(user.getUid());
//        h) 创建PageInfo对象，同时把查找到的list封装进去，对象为info
                PageInfo<Favorite> info = new PageInfo<>(list);
//        i) 通过ObjectMapper的对象，把info 对象转化为json格式的数据，str接收
                str = mapper.writeValueAsString(info);
            }
        } catch (JsonProcessingException e) {
            e.printStackTrace();
        }

//        j) 把str返回给前端页面
        return str;

    }

    @RequestMapping("/findRouteFavoriteRank.do")
    @ResponseBody
    public String findRouteFavoriteRank(int pageNum) {
//        a) 定义参数接收页面发送过来的pageNum
//        b) 创建ObjectMapper，把最后的结果转化为json格式的数据
        ObjectMapper mapper = new ObjectMapper();
//        c) 定义str 接收最终的结果
        String str = "";
//        d) 使用PageHelper，设置其实页以及页面大小
        PageHelper.startPage(pageNum,8);
//        e) 调用RouteService的findRoueRank方法，获取排序后的集合数据 list
        List<Route> list = routeService.findRouteRank();
//        f) 创建PageInfo对象，并且传入list集合
        PageInfo<Route> info = new PageInfo<>(list);
//        g) 通过ObjectMapper对象把list转化为json字符串，str接收
        try {
            str = mapper.writeValueAsString(info);
        } catch (JsonProcessingException e) {
            e.printStackTrace();
        }
//        h) 把结果str发送给前端页面
        return str;
    }

    @RequestMapping("/findRouteFavoriteRank1.do")
    @ResponseBody
    public String findRouteFavoriteRank(int pageNum,String rname ,Double startPrice , Double endPrice){
//        a) 定义参数接收页面发送过来的pageNum,rname,startPrice,endPrice
//        b) 创建ObjectMapper，把最后的结果转化为json格式的数据
        ObjectMapper mapper = new ObjectMapper();
//        c) 定义str 接收最终的结果
        String str = "";
//        d) 使用PageHelper，设置其实页以及页面大小
        PageHelper.startPage(pageNum,8);
//        e) 调用RouteService的findRouteRankByCondition方法，获取排序后的集合数据 list
        List<Route> list = routeService.findRouteRankByCondition(rname, startPrice, endPrice);
//        f) 创建PageInfo对象，并且传入list集合
        PageInfo<Route> info = new PageInfo<>(list);
//        g) 通过ObjectMapper对象把list转化为json字符串，str接收
        try {
            str = mapper.writeValueAsString(info);
        } catch (JsonProcessingException e) {
            e.printStackTrace();
        }
//        h) 把结果str发送给前端页面
        return  str;
    }


}
