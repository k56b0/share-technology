package com.aerial.toys.pojo;

public class ModelToy {
    /*
    CREATE TABLE `ModulToy` (
`ModelToy_id` INT(11) NOT NULL AUTO_INCREMENT,
`goods_name` VARCHAR(20) DEFAULT NULL,
`price` INT(11) DEFAULT NULL,
`inventory` INT(11) DEFAULT NULL,
PRIMARY KEY (`ModulToy_id`) )
     */
    private Integer ModelToyId;
    private String goodsName;
    private Integer price;
    private Integer inventory;

    public ModelToy() {
    }

    @Override
    public String toString() {
        return "ModelToy{" +
                "ModelToyId=" + ModelToyId +
                ", goodsName='" + goodsName + '\'' +
                ", price=" + price +
                ", inventory=" + inventory +
                '}';
    }

    public Integer getModelToyId() {
        return ModelToyId;
    }

    public void setModelToyId(Integer modelToyId) {
        ModelToyId = modelToyId;
    }

    public String getGoodsName() {
        return goodsName;
    }

    public void setGoodsName(String goodsName) {
        this.goodsName = goodsName;
    }

    public Integer getPrice() {
        return price;
    }

    public void setPrice(Integer price) {
        this.price = price;
    }

    public Integer getInventory() {
        return inventory;
    }

    public void setInventory(Integer inventory) {
        this.inventory = inventory;
    }

    public ModelToy(Integer modelToyId, String goodsName, Integer price, Integer inventory) {
        ModelToyId = modelToyId;
        this.goodsName = goodsName;
        this.price = price;
        this.inventory = inventory;
    }
}
