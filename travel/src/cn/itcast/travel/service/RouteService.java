package cn.itcast.travel.service;

import cn.itcast.travel.entity.Route;

import java.util.List;

public interface RouteService {

    List<Route> findMostFavoriteRoutesByCid(int cid);

    List<Route> findAllRoutesByPage(int cid);

    List<Route> findAllRoutesByCid(int cid ,String rname);

    Route findRouteByRid(int rid);

    void updateRouteFavoriteNum(int rid);

    Boolean isFavoriteByUidAndRid(int uid, int rid);

    List<Route> findRouteRank();

    List<Route> findRouteRankByCondition(String rname, Double startPrice, Double endPrice);
}
