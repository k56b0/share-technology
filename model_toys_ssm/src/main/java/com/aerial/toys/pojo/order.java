package com.aerial.toys.pojo;

public class order {
    private Integer orderId;
    private Integer goodsCount;
    private user belongUser;

    public order() {
    }

    public order(Integer orderId, Integer goodsCount, user belongUser) {
        this.orderId = orderId;
        this.goodsCount = goodsCount;
        this.belongUser = belongUser;
    }

    public Integer getOrderId() {
        return orderId;
    }

    public void setOrderId(Integer orderId) {
        this.orderId = orderId;
    }

    public Integer getGoodsCount() {
        return goodsCount;
    }

    public void setGoodsCount(Integer goodsCount) {
        this.goodsCount = goodsCount;
    }

    public user getBelongUser() {
        return belongUser;
    }

    public void setBelongUser(user belongUser) {
        this.belongUser = belongUser;
    }

    @Override
    public String toString() {
        return "order{" +
                "orderId=" + orderId +
                ", goodsCount=" + goodsCount +
                ", belongUser=" + belongUser +
                '}';
    }
}
