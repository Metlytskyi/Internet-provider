package com.internetprovider.entity.classes;

public class Order extends Entity {
    private long userId;
    private Service service;

    public long getUserId() {
        return userId;
    }

    public void setUserId(long userId) {
        this.userId = userId;
    }

    public Service getService() {
        return service;
    }

    public void setService(Service service) {
        this.service = service;
    }
}
