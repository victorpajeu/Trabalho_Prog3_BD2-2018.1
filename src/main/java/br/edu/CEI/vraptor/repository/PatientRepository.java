package br.edu.CEI.vraptor.repository;

import br.edu.CEI.vraptor.model.patient.Patient;
import br.edu.CEI.vraptor.repository.util.ConnectionFactory;
import java.util.List;

import javax.persistence.EntityManager;

import org.hibernate.Criteria;
import org.hibernate.criterion.Criterion;
import org.hibernate.criterion.MatchMode;
import org.hibernate.criterion.Restrictions;

public class PatientRepository extends RepositorioGenerico {

	public PatientRepository() {
		super(Patient.class);
	}

	public void save (Patient patient) {

		EntityManager em = ConnectionFactory.getEntityManager();
		em.getTransaction().begin();

		try {
			em.persist(patient);
			em.getTransaction().commit();
		} catch (Exception e) {
			em.getTransaction().rollback();
		}

		em.close();

	}

	public void update(Patient patient) {

		EntityManager em = ConnectionFactory.getEntityManager();
		em.getTransaction().begin();

		try {
			em.merge(patient);
			em.getTransaction().commit();
		} catch (Exception e) {
			em.getTransaction().rollback();
		}

		em.close();

	}

	public void delete(Patient patient) {

		EntityManager em = ConnectionFactory.getEntityManager();
		em.getTransaction().begin();

		try {
			patient = em.find(Patient.class, patient.getCode());
			em.remove(patient);
			em.getTransaction().commit();
		} catch (Exception e) {
			em.getTransaction().rollback();
		}

		em.close();

	}

	public List<Patient> searchforname(String name) {

		Criteria c = getCriteria();

		Criterion c1 = Restrictions.ilike("name", name, MatchMode.START);
		c.add(c1);
		return c.setResultTransformer(Criteria.DISTINCT_ROOT_ENTITY).list();
	}

	public Patient search(String name) {

		Criteria c = getCriteria();

		Criterion c1 = Restrictions.ilike("name", name, MatchMode.START);
		c.add(c1);
		return (Patient) c.uniqueResult();
	}

	public Patient searchForPhone(String phone) {

		Criteria c = getCriteria();

		c.add(Restrictions.eq("phone", phone));

		return (Patient) c.uniqueResult();

	}

}
