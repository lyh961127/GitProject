package com.it.ssm.mapper;

import com.it.ssm.pojo.User;

import java.util.List;

public interface UserMapper {
    public User getUserById(int id);

    public List<User> getUsers();

    public void saveUser();

    void updateUser(User user);

    void delete(int id);
}
