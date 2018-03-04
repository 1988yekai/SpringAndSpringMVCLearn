package com.yek.bean;

/**
 * Created by yek on 2016-12-22.
 */
public class AddressBean {
    private String province;
    private String city;

    public String getProvince() {
        return province;
    }

    public void setProvince(String province) {
        this.province = province;
    }

    public String getCity() {
        return city;
    }

    public void setCity(String city) {
        this.city = city;
    }

    public AddressBean() {
    }

    public AddressBean(String province, String city) {
        this.province = province;
        this.city = city;
    }

    @Override
    public String toString() {
        return "AddressBean{" +
                "province='" + province + '\'' +
                ", city='" + city + '\'' +
                '}';
    }
}
