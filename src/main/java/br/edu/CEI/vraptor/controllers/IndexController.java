/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package br.edu.CEI.vraptor.controllers;

import br.com.caelum.vraptor.Controller;
import br.com.caelum.vraptor.Get;
import br.edu.CEI.vraptor.annotations.Private;

/**
 *
 * @author Victor Pajeú
 */
@Controller
@Private
public class IndexController {
    
    @Get("/")
    public void index(){
        
    }
    
    
    @Get("editar")
    public void editUser(){
        
    }
    
}
