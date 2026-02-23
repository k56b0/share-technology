package com.aerial.toys.service;

import com.aerial.toys.pojo.user;

public interface UserService {

      user checkUser(String user,String psw);

      int updateUser(user u);

      user GetUserById(Integer id);
}
