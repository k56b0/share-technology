package com.aerial.toys.mapper;


import com.aerial.toys.pojo.user;
import org.apache.ibatis.annotations.Param;

import java.util.List;

public interface auserMapper {
    /**
     * --查找所有信息
     * SELECT *FROM `user`;
     * @return  List<user>
     */
    List<user> getAllUser();

    /**
     * 验证用户
     *  SELECT *FROM `user` WHERE user_name = '小张' AND `password` =123456;
     * @return  user
     */
    user checkUser(@Param("name") String name, @Param("password") String password);

    /**
     * 根据用户名获得用户信息
     * SELECT * FROM `user` WHERE user_name = '小张';
     * @param name
     * @return user
     */
    user getUserByName(@Param("name") String name);

    /**
     * 根据id获得用户信息
     * SELECT *FROM `user` WHERE user_id = 1;
     * @param id
     * @return user
     */
    user getUserById(@Param("id") Integer id);

    /**
     * 修改用户信息
     * UPDATE `user`SET user_name = '小张',`password`='123',age=18,sex='男',email='wffw@qq.com'
     * @param u
     * @return
     */
    int upDateUser(user u);


}




