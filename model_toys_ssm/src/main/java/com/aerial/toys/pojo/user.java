package com.aerial.toys.pojo;

public class user {
    private Integer userId;
    private String userName;
    private String password;
    private Integer age;
    private String sex;
    private String email;
    private String UserGroup;


    public user() {
    }

    public user(Integer userId, String userName, String password, Integer age, String sex, String email, String userGroup) {
        this.userId = userId;
        this.userName = userName;
        this.password = password;
        this.age = age;
        this.sex = sex;
        this.email = email;
        UserGroup = userGroup;
    }

    public Integer getUserId() {
        return userId;
    }

    public void setUserId(Integer userId) {
        this.userId = userId;
    }

    public String getUserName() {
        return userName;
    }

    public void setUserName(String userName) {
        this.userName = userName;
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }

    public Integer getAge() {
        return age;
    }

    public void setAge(Integer age) {
        this.age = age;
    }

    public String getSex() {
        return sex;
    }

    public void setSex(String sex) {
        this.sex = sex;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public String getUserGroup() {
        return UserGroup;
    }

    public void setUserGroup(String userGroup) {
        UserGroup = userGroup;
    }

    @Override
    public String toString() {
        return "user{" +
                "userId=" + userId +
                ", userName='" + userName + '\'' +
                ", password='" + password + '\'' +
                ", age=" + age +
                ", sex='" + sex + '\'' +
                ", email='" + email + '\'' +
                ", UserGroup='" + UserGroup + '\'' +
                '}';
    }
}
