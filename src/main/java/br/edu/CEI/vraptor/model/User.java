/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package br.edu.CEI.vraptor.model;

/**
 *
 * @author Victor Pajeú
 */
public class User {

    private String name;
    private String password;
    private boolean sudo;

    public User() {
    }

    public boolean getSudo() {
        return sudo;
    }

    public void setSudo(boolean sudo) {
        this.sudo = sudo;
    }

    public User(String name, String password) {
        this.name = name;
        this.password = password;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }

    /*@Override
    public boolean equals(Object obj) {
        User objUser = (User) obj;
        boolean result = false;
        if (this.name.equalsIgnoreCase(objUser.getName())
                && this.password.equalsIgnoreCase(objUser.getPassword())) {
            result = true;
        }
        return result;
    }*/
}
