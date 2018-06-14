package br.edu.CEI.vraptor.model.attendance;

import br.edu.CEI.vraptor.model.patient.Patient;
import java.util.Date;
import java.util.UUID;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.EnumType;
import javax.persistence.Enumerated;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.PrePersist;
import javax.persistence.Temporal;
import javax.persistence.TemporalType;

import br.edu.CEI.vraptor.model.employee.Employee;

@Entity
public class Attendance {

    @Id
    private String code;

    @Temporal(TemporalType.TIME)
    @Column(nullable = false)
    private Date time;

    @Temporal(TemporalType.DATE)
    @Column(nullable = false)
    private Date data;

    @Column(nullable = false)
    private boolean payment;

    @Enumerated(EnumType.STRING)
    @Column(nullable = false)
    private Covenant covenant;

    @Enumerated(EnumType.STRING)
    @Column(nullable = false)
    private Type type;

    @ManyToOne
    @JoinColumn
    private Patient patient;

    @ManyToOne
    @JoinColumn
    private Employee employee;

    @PrePersist
    public void gerarID() {
        this.code = UUID.randomUUID().toString();
    }

    public Date getTime() {
        return time;
    }

    public void setTime(Date time) {
        this.time = time;
    }

    public Date getData() {
        return data;
    }

    public void setData(Date data) {
        this.data = data;
    }

    public Patient getPatient() {
        return patient;
    }

    public void setPatient(Patient patient) {
        this.patient = patient;
    }

    public Employee getEmployee() {
        return employee;
    }

    public void setEmployee(Employee employee) {
        this.employee = employee;
    }

    public String getCode() {
        return code;
    }

    public void setCode(String code) {
        this.code = code;
    }

    public boolean isPayment() {
        return payment;
    }

    public void setPayment(boolean payment) {
        this.payment = payment;
    }

    public Type getType() {
        return type;
    }

    public void setType(Type type) {
        this.type = type;
    }

    public Covenant getCovenant() {
        return covenant;
    }

    public void setCovenant(Covenant covenant) {
        this.covenant = covenant;
    }

}
