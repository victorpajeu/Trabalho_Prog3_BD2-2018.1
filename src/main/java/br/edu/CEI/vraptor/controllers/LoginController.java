/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package br.edu.CEI.vraptor.controllers;

import br.com.caelum.vraptor.Controller;
import br.com.caelum.vraptor.Get;
import br.com.caelum.vraptor.Post;
import br.com.caelum.vraptor.Result;
import br.edu.CEI.vraptor.annotations.Private;
import br.edu.CEI.vraptor.components.UserSession;
import br.edu.CEI.vraptor.model.User;
import javax.inject.Inject;

/**
 *
 * @author Victor Pajeú
 */
@Controller
public class LoginController {

    @Inject
    private UserSession userSession;
    @Inject
    private Result result;

    @Private
    @Get("login")
    public void loginView() {

    }

    @Post("autenticar")
    public void authenticate(User user) {
        
       result.redirectTo(IndexController.class).index();
        userSession.setUserLogged(user);
        // userSession.setUserLogged(user);
       // result.redirectTo(IndexController.class).index();
       
        
     //User user = Bd.bucar(user, password)
        //if ( user != null) {
        // if (user.getSudo()) {
        //     result.include("sudo", "Cad.User");
        // }
    //}

    
        //else {
          //  result.include("msgLoginError", "Usuário ou senha inválidos!");
        //result.redirectTo(this).loginView();
    //
    }
}

