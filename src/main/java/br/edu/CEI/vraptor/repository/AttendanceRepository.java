package br.edu.CEI.vraptor.repository;

import br.edu.CEI.vraptor.model.attendance.Attendance;
import br.edu.CEI.vraptor.repository.util.ConnectionFactory;
import java.util.Date;
import java.util.List;

import javax.persistence.EntityManager;

import org.hibernate.Criteria;
import org.hibernate.criterion.Criterion;
import org.hibernate.criterion.MatchMode;
import org.hibernate.criterion.Restrictions;

public class AttendanceRepository extends RepositorioGenerico  {

	public AttendanceRepository() {
		super(Attendance.class);
	}

	public void save(Attendance attendance) {

		EntityManager em = ConnectionFactory.getEntityManager();
		em.getTransaction().begin();

		try {
			em.persist(attendance);
			em.getTransaction().commit();
		} catch (Exception e) {
			em.getTransaction().rollback();
		}

		em.close();

	}

	public void update(Attendance attendance) {

		EntityManager em = ConnectionFactory.getEntityManager();
		em.getTransaction().begin();

		try {
			em.merge(attendance);
			em.getTransaction().commit();
		} catch (Exception e) {
			em.getTransaction().rollback();
		}

		em.close();

	}

	public void delete(Attendance attendance) {

		EntityManager em = ConnectionFactory.getEntityManager();
		em.getTransaction().begin();

		try {
			attendance = em.find(Attendance.class, attendance.getCode());
			em.remove(attendance);
			em.getTransaction().commit();
		} catch (Exception e) {
			em.getTransaction().rollback();
		}

		em.close();

	}

	public List<Attendance> SearchByPatient(String name, String phone) {

		Criteria c = getCriteria();

		c.createAlias("patient", "p");

		Criterion c1 = Restrictions.ilike("p.name", name, MatchMode.START);
		Criterion c2 = Restrictions.like("p.phone", phone, MatchMode.START);
		Criterion c3 = Restrictions.or(c1, c2);
		c.add(c3);
		return c.setResultTransformer(Criteria.DISTINCT_ROOT_ENTITY).list();

	}
	
	public List<Attendance> searchForDate(Date date) {

		Criteria c = getCriteria();

		Criterion c1 = Restrictions.eq("data", date);
                
		c.add(c1);
		return c.setResultTransformer(Criteria.DISTINCT_ROOT_ENTITY).list();
	}
	

}
