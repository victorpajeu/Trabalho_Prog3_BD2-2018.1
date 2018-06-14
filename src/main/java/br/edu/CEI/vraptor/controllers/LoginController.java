/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package br.edu.CEI.vraptor.controllers;

import br.edu.CEI.vraptor.repository.EmployeeRepository;
import br.com.caelum.vraptor.Controller;
import br.com.caelum.vraptor.Get;
import br.com.caelum.vraptor.Post;
import br.com.caelum.vraptor.Result;
import br.edu.CEI.vraptor.annotations.Private;
import br.edu.CEI.vraptor.components.UserSession;
import javax.inject.Inject;
import br.edu.CEI.vraptor.model.employee.Employee;
import br.edu.CEI.vraptor.repository.util.Encryption;
import java.security.MessageDigest;

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
    @Inject
    private EmployeeRepository employerRepository;

    @Private
    @Get("login")
    public void loginView() {

    }
    @Post("autenticar")
    public void authenticate(String user, String password) {
          
        String pwd = Encryption.criptografar(password);
        //------ Validando (Buscando o cara no banco...)----------------
        Employee employer = employerRepository.validation(user, pwd);

        if (employer != null) {

            if (employer.getNivel().equals("ADM")) {
                result.include("sudo", "Cad.User");
                userSession.setUserLogged(employer);
            }
            userSession.setUserLogged(employer);
            result.redirectTo(AgendaController.class).agenda();
        } else {
            result.include("msgLoginError", "Usuário ou senha inválidos!");
            result.redirectTo(this).loginView();

        }
    }
}
