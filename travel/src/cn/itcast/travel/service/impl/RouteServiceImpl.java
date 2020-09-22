package cn.itcast.travel.service.impl;

import cn.itcast.travel.entity.Route;
import cn.itcast.travel.mapper.FavoriteMapper;
import cn.itcast.travel.mapper.RouteMapper;
import cn.itcast.travel.service.RouteService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class RouteServiceImpl implements RouteService {

    @Autowired
    private RouteMapper routeMapper;

    @Autowired
    private FavoriteMapper favoriteMapper;


    @Override
    public List<Route> findMostFavoriteRoutesByCid(int cid) {
        return routeMapper.findMostFavoriteRoutesByCid(cid);
    }

    @Override
    public List<Route> findAllRoutesByPage(int cid) {
        return routeMapper.findAllRoutesByPage(cid);
    }

    @Override
    public List<Route> findAllRoutesByCid(int cid, String rname) {

        if(rname == null){
            rname = "";
        }else{
            rname = "%" + rname + "%";
        }

        return routeMapper.findAllRoutesByCid(cid,rname);
    }

    @Override
    public Route findRouteByRid(int rid) {
        return routeMapper.findRouteById(rid);
    }

    @Override
    public void updateRouteFavoriteNum(int rid) {
        routeMapper.updateRouteFavoriteNum(rid);
    }

    @Override
    public Boolean isFavoriteByUidAndRid(int uid, int rid) {
        //找到就返回true 找不到就返回false
        return favoriteMapper.findFavoriteByUidAndRid(uid, rid) == null? false : true;
    }

    @Override
    public List<Route> findRouteRank() {
        return routeMapper.findRouteRank();
    }

    @Override
    public List<Route> findRouteRankByCondition(String rname, Double startPrice, Double endPrice) {
        return routeMapper.findRouteRankByCondition(rname, startPrice, endPrice);
    }

}
