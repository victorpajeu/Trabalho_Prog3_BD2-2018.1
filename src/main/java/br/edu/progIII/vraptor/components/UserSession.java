/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package br.edu.progIII.vraptor.components;

import br.edu.progIII.vraptor.controllers.LoginController;
import br.edu.progIII.vraptor.model.User;
import java.io.Serializable;
import java.util.ArrayList;
import java.util.List;
import javax.enterprise.context.SessionScoped;
import javax.inject.Named;

/**
 *
 * @author leonardo
 */
//Nome do bean em sessão
@Named("userSession")
@SessionScoped
//Serializable  -> Guarda o estado do objeto em memória
public class UserSession implements Serializable{
    
    private List<User> users  = new ArrayList<>();
    
    public UserSession() {
       users.add(new User("1", "1"));
       System.out.println("Init User Session " + users);
    }
    
    public void addUser(User user){
       users.add(user);
    }

     public List<User> getUsers() {
        return users;
    }

    public void deleteAll(){
        users = new ArrayList<>();
    }  
    
    
}
