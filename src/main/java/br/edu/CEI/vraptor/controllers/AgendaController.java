
package br.edu.CEI.vraptor.controllers;

import br.edu.CEI.vraptor.repository.AttendanceRepository;
import br.com.caelum.vraptor.Controller;
import br.com.caelum.vraptor.Get;
import br.com.caelum.vraptor.Path;
import br.com.caelum.vraptor.Post;
import br.com.caelum.vraptor.Result;
import br.edu.CEI.vraptor.annotations.Private;
import br.edu.CEI.vraptor.model.attendance.Attendance;
import java.text.ParseException;    
import java.text.SimpleDateFormat;
import java.util.Calendar;
import java.util.Date;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.inject.Inject;

@Private
@Controller
@Path("/agendamentos")
public class AgendaController {
    
    @Inject
    private Result result;
    @Inject
    private AttendanceRepository attendanceRepository;
    @Get("/")
    public void agenda(){
        
    }
    
    @Post("salvar")
    public void saveAttendance(Attendance attendance){
        
        
    };
    // --------------------- Buscando por data e retornando a lista de atendimentos ---------------
    @Get("buscar")
    public void find(String data) {
        Calendar c = Calendar.getInstance();
        c.set(Calendar.DAY_OF_MONTH, Integer.valueOf(data.substring(8, 10)));
        c.set(Calendar.MONTH, Integer.valueOf(data.substring(5, 7)));
        c.set(Calendar.YEAR, Integer.valueOf(data.substring(0, 4)));
        
        
        
        result.include("listaAndamentos", attendanceRepository.searchForDate(c.getTime()));
        
        result.redirectTo(AgendaController.class).agenda();
        
    }
    
}
