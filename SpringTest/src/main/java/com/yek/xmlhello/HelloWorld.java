package com.yek.xmlhello;

/**
 * Created by yek on 2016-12-28.
 */
public class HelloWorld {
    private String username;

    public void setUsername(String username) {
        this.username = username;
    }

    public void speak() {
        System.out.println("username:" + username);
    }
}
