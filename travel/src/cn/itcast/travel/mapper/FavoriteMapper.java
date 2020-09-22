package cn.itcast.travel.mapper;

import cn.itcast.travel.entity.Favorite;
import org.apache.ibatis.annotations.Param;

import java.util.List;

public interface FavoriteMapper {

    Favorite findFavoriteByUidAndRid(@Param("uid") int uid, @Param("rid") int rid);

    void addFavorite(Favorite favorite);

    List<Favorite> findAllFavoriteByUid(int uid);

}
