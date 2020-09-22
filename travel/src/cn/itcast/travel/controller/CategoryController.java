package cn.itcast.travel.controller;

import cn.itcast.travel.entity.Category;
import cn.itcast.travel.service.CategoryService;
import com.fasterxml.jackson.core.JsonProcessingException;
import com.fasterxml.jackson.databind.ObjectMapper;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import java.util.List;


@Controller
@RequestMapping("/category")
public class CategoryController {

    @Autowired
    private CategoryService categoryService;

    @RequestMapping("/findAllCategory.do")
    @ResponseBody
    public String findAllCategory(){

        List<Category> list = categoryService.findAllCategory();
        ObjectMapper mapper = new ObjectMapper();
        String str = "";
        try {
            str =  mapper.writeValueAsString(list);
        } catch (JsonProcessingException e) {
            e.printStackTrace();
        }
        return str;
    }
}

