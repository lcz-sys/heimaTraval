package cn.itcast.travel.service.impl;

import cn.itcast.travel.entity.User;
import cn.itcast.travel.mapper.UserMapper;
import cn.itcast.travel.service.UserService;
import cn.itcast.travel.utils.Md5Utils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class UserServiceImpl implements UserService {
    @Autowired
    private UserMapper userMapper;
    @Override
    public boolean checkUsernameExist(String username) {
        User user = userMapper.findUserByUsername(username);
        //不存在就是false  存在就是为true
        System.out.println("user:" + user);
        return user == null ? false : true;
    }

    @Override
    public void saveUser(User user) {
        //需要对密码加密
        user.setPassword(Md5Utils.getMd5(user.getPassword()));
        userMapper.saveUser(user);
    }

    @Override
    public boolean login(User user) {

        user.setPassword(Md5Utils.getMd5(user.getPassword()));

        return userMapper.findUserByUsernameAndPassword(user) == null ? false : true;
    }

}
