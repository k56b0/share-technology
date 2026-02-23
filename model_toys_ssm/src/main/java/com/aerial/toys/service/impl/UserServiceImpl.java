package com.aerial.toys.service.impl;

import com.aerial.toys.mapper.auserMapper;
import com.aerial.toys.pojo.user;
import com.aerial.toys.service.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;


@Service
@Transactional
public class UserServiceImpl implements UserService {

    @Autowired
    private auserMapper auserMapper;

    @Override
    public user checkUser(String user, String psw) {
        user user1 = auserMapper.checkUser(user, psw);
        if(user1!= null) return user1;

        return null;
    }

    @Override
    public int updateUser(user u) {
        return auserMapper.upDateUser(u);
    }

    @Override
    public user GetUserById(Integer id) {
        return auserMapper.getUserById(id);
    }
}
