
package br.edu.CEI.vraptor.controllers;

import br.edu.CEI.vraptor.repository.PatientRepository;
import br.com.caelum.vraptor.Controller;
import br.com.caelum.vraptor.Path;
import br.com.caelum.vraptor.Post;
import br.edu.CEI.vraptor.model.patient.Patient;
import javax.inject.Inject;

@Controller
@Path("paciente")
public class PatientController {
    @Inject
    private PatientRepository patientrepository;
    
    @Post("salvar")
    public void save(Patient patient) {
        
       
        
        if(  patientrepository.search(patient.getName()) != null){
            
            patientrepository.save(patient); 
         
        }
        
         
    }

}
