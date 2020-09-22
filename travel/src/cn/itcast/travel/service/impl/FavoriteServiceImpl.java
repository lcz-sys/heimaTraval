package cn.itcast.travel.service.impl;

import cn.itcast.travel.entity.Favorite;
import cn.itcast.travel.entity.Route;
import cn.itcast.travel.entity.User;
import cn.itcast.travel.mapper.FavoriteMapper;
import cn.itcast.travel.mapper.RouteMapper;
import cn.itcast.travel.service.FavoriteService;
import cn.itcast.travel.service.RouteService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.sql.Date;
import java.util.List;

@Service
public class FavoriteServiceImpl implements FavoriteService {
    @Autowired
    private FavoriteMapper favoriteMapper;
    @Autowired
    private RouteService routeService;

    @Override
    public void addFavorite(User user, int rid) {
        Favorite favorite = new Favorite();
        favorite.setDate(new Date(new java.util.Date().getTime()));
        routeService.updateRouteFavoriteNum(rid);
        Route route = new Route();
        route.setRid(rid);
        favorite.setRoute(route);
        favorite.setUser(user);
        favoriteMapper.addFavorite(favorite);
    }

    @Override
    public List<Favorite> findAllFavoriteByUid(int uid) {
        return favoriteMapper.findAllFavoriteByUid(uid);
    }


}
