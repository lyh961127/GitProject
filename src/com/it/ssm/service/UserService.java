package com.it.ssm.service;

import com.it.ssm.pojo.User;
import org.springframework.stereotype.Service;

import java.util.List;

public interface UserService {
    public User getUser(int id);

    public List<User> getUsers();

    public void saveUser(User user);

    public void updateUser(User user);

    public void delete(int id);
}
