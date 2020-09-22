package cn.itcast.travel.mapper;

import cn.itcast.travel.entity.Category;

import java.util.List;

public interface CategoryMapper {

    List<Category> findAllCategory();

    Category findCategoryByCid(int cid);
}
