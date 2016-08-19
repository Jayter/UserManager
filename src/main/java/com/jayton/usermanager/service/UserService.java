package com.jayton.usermanager.service;

import com.jayton.usermanager.model.User;

import java.util.List;

/**
 * Created by Nicki on 8/17/2016.
 */
public interface UserService {
    public void addUser(User user);
    public void updateUser(User user);
    public void removeUser(int id);
    public User getUserById(int id);
    public List<User> listUsers();
}
