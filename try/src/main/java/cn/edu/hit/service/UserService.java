package cn.edu.hit.service;

import cn.edu.hit.po.User;

public interface UserService {
    void test();

    int changeName(String name);

    void addUser(User user);

    User login(User user);
}
