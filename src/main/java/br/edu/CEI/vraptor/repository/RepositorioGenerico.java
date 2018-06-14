
package br.edu.CEI.vraptor.repository;

import br.edu.CEI.vraptor.repository.util.ConnectionFactory;
import javax.persistence.EntityManager;
import org.hibernate.Criteria;
import org.hibernate.Session;


public abstract class RepositorioGenerico {

    private Class type;

    public RepositorioGenerico(Class type) {
        this.type = type;
    }

    protected Criteria getCriteria() {
        EntityManager em = ConnectionFactory.getEntityManager();

        Session s = (Session) em.getDelegate();

        Criteria c = s.createCriteria(type);
        return c;
    }

}
