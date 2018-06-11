/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package br.edu.CEI.vraptor.controllers;

import br.com.caelum.vraptor.Controller;
import br.com.caelum.vraptor.Get;
import br.com.caelum.vraptor.Path;
import br.com.caelum.vraptor.Post;
import br.com.caelum.vraptor.Result;
import br.edu.CEI.vraptor.components.UserSession;
import br.edu.CEI.vraptor.model.User;

import javax.inject.Inject;

/**
 *
 * @author Victor Pajeú
 */
@Controller
@Path("usuario")//Define um caminho (inicial - prefixo) para todas as ações do controller
public class UserController {

    /*Result (VRaptor) = Permite modificar rotas e incluir objetos que 
    serão exibidos na view
     */
    @Inject
    private Result result;

    @Inject
    private UserSession userSession;

    @Get("list")
    public void list(){
    
    }
    //usuario/novo
    @Get("novo")
    public void registerView() {

    }
    @Get("buscar")
    public void find(){
        
    }

    //usuario/salvar
    @Post("salvar")
    public void save(User user) {
       // UserRepositorio.salvar(user);
        /*
        Redireciona (SendRedirect) para uma rota do próprio (this) 
        controller. No caso, a rota é registerView
         */
        result.redirectTo(this).registerView();
    }

    @Get("apagar")
    public void delete() {
        userSession.deleteAll();
        result.redirectTo(this).registerView();
    }
}
