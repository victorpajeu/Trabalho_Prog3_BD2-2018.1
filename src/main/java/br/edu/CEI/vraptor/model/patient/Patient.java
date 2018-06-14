package br.edu.CEI.vraptor.model.patient;

import java.util.UUID;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.PrePersist;

@Entity
public class Patient {

    @Id
    private String code;

    @Column(nullable = false)
    private String name;

    @Column(nullable = false)
    private String phone;

    @Column(nullable = true)
    private boolean preference = false;

    @Column(nullable = true)
    private boolean bioimpedancia = false;

    @PrePersist
    public void gerarID() {
        this.code = UUID.randomUUID().toString();
    }

    public String getCode() {
        return code;
    }

    public void setCode(String code) {
        this.code = code;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getPhone() {
        return phone;
    }

    public void setPhone(String phone) {
        this.phone = phone;
    }

    public boolean isPreference() {
        return preference;
    }

    public void setPreference(boolean preference) {
        this.preference = preference;
    }

    public boolean isBioimpedancia() {
        return bioimpedancia;
    }

    public void setBioimpedancia(boolean bioimpedancia) {
        this.bioimpedancia = bioimpedancia;
    }

}
