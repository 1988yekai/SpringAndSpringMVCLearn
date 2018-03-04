package com.yek.xmlhello.service;

/**
 * Created by yek on 2016-12-28.
 */
public class MesPrinter {
    private MesService service;
    public void setService(MesService service){
        this.service = service;
    }
    public void print(){
        System.out.println(service.getMes());
    }
}
