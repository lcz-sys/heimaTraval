package cn.itcast.travel.service;

import cn.itcast.travel.entity.User;

public interface UserService {

    boolean checkUsernameExist(String username);

    void saveUser(User user);

    boolean login(User user);
}
