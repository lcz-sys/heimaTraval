package cn.itcast.travel.mapper;

import cn.itcast.travel.entity.Route;
import org.apache.ibatis.annotations.Param;

import java.util.List;

public interface RouteMapper {


    List<Route> findMostFavoriteRoutesByCid(int cid);

    List<Route> findAllRoutesByPage(int cid);

    List<Route> findAllRoutesByCid(@Param("cid") int cid, @Param("rname") String rname);

    Route findRouteById(int rid);

    void updateRouteFavoriteNum(int rid);

    List<Route> findRouteRank();

    List<Route> findRouteRankByCondition(@Param("rname") String rname, @Param("startPrice") Double startPrice, @Param("endPrice") Double endPrice);
}
