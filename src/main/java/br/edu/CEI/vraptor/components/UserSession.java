/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package br.edu.CEI.vraptor.components;


import br.edu.CEI.vraptor.model.User;
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
    private User userLogged;
    
    //Criação do primeiro Usuário para entrar na aplicação.////////////////////
    public UserSession() {
       //UserRepository.salvar(new User("admin","admin"));
    }
    ///////////////////////////////////////////////////
   
    
    
    //Primeiro passo depois de logado (ELE ADD O USUÁRIO A SESSÃO)///////////////
    public void setUserLogged(User userLogged) {
        this.userLogged = userLogged;
    }
    /////////////////////////////////////////////////////////////////////////////
    
    //Saber de tem alguem logado ou não....///////////////////////////////////
    public boolean isUserLogged(){
         return userLogged != null;
    }
    //////////////////////////////////////////////////////////////////////////
     public void logout(){
        userLogged = null;
     }
    public User getUserLogged() {
        return userLogged;
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
