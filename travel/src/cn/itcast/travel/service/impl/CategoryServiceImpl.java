package cn.itcast.travel.service.impl;

import cn.itcast.travel.entity.Category;
import cn.itcast.travel.mapper.CategoryMapper;
import cn.itcast.travel.service.CategoryService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class CategoryServiceImpl implements CategoryService {

    @Autowired
    private CategoryMapper categoryMapper;

    @Override
    public List<Category> findAllCategory() {

        return categoryMapper.findAllCategory();

    }
}
