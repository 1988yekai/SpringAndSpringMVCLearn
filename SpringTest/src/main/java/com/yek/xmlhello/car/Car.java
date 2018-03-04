package com.yek.xmlhello.car;

/**
 * Created by yek on 2016-12-29.
 */
public class Car {
    private double price;
    private String brand;

    public Car() {
    }

    public Car(String brand, double price) {
        this.brand = brand;
        this.price = price;
    }

    public double getPrice() {
        return price;
    }

    public void setPrice(double price) {
        this.price = price;
    }

    public String getBrand() {
        return brand;
    }

    public void setBrand(String brand) {
        this.brand = brand;
    }

    @Override
    public String toString() {
        return "Car{" +
                "price=" + price +
                ", brand='" + brand + '\'' +
                '}';
    }
}
