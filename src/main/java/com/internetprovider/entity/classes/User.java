package com.internetprovider.entity.classes;

import com.internetprovider.entity.enums.Role;
import com.internetprovider.entity.enums.Status;

public class User extends Entity {
    private String email;
    private String password;
    private String name;
    private String surname;
    private Role role;
    private java.math.BigDecimal balance;
    private Status status;

    public User(){

    }
    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getSurname() {
        return surname;
    }

    public void setSurname(String surname) {
        this.surname = surname;
    }

    public Role getRole() {
        return role;
    }

    public void setRole(Role role) {
        this.role = role;
    }

    public java.math.BigDecimal	 getBalance() {
        return balance;
    }

    public void setBalance(java.math.BigDecimal	 balance) {
        this.balance = balance;
    }
}
