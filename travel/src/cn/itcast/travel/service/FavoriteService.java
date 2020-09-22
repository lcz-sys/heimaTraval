package cn.itcast.travel.service;

import cn.itcast.travel.entity.Favorite;
import cn.itcast.travel.entity.User;

import java.util.List;

public interface FavoriteService {

    void addFavorite(User user, int rid);

    List<Favorite> findAllFavoriteByUid(int uid);
}
