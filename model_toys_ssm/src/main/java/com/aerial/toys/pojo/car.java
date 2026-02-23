package com.aerial.toys.pojo;

public class car {
    private Integer carId;
    private String carName;
    private Integer carPrice;

    public car() {
    }

    public car(Integer carId, String carName, Integer carPrice) {
        this.carId = carId;
        this.carName = carName;
        this.carPrice = carPrice;
    }

    public Integer getCarId() {
        return carId;
    }

    public void setCarId(Integer carId) {
        this.carId = carId;
    }

    public String getCarName() {
        return carName;
    }

    public void setCarName(String carName) {
        this.carName = carName;
    }

    public Integer getCarPrice() {
        return carPrice;
    }

    public void setCarPrice(Integer carPrice) {
        this.carPrice = carPrice;
    }

    @Override
    public String toString() {
        return "car{" +
                "carId=" + carId +
                ", carName='" + carName + '\'' +
                ", carPrice=" + carPrice +
                '}';
    }
}
