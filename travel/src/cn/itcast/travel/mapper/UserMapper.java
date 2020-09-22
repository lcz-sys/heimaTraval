package cn.itcast.travel.mapper;

import cn.itcast.travel.entity.User;

public interface UserMapper {

    User findUserByUsername(String username);
    void saveUser(User user);
    User findUserByUsernameAndPassword(User user);
    User findUserByUid(int uid);

}
