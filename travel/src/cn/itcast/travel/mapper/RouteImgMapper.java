package cn.itcast.travel.mapper;

import cn.itcast.travel.entity.RouteImg;

import java.util.List;

public interface RouteImgMapper {
    List<RouteImg> findRouteImgByRid(int rid);
}
