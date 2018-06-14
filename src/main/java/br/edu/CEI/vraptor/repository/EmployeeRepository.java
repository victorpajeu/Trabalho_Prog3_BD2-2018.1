package br.edu.CEI.vraptor.repository;

import br.edu.CEI.vraptor.repository.util.ConnectionFactory;
import java.util.List;

import javax.persistence.EntityManager;

import org.hibernate.Criteria;
import org.hibernate.criterion.Criterion;
import org.hibernate.criterion.MatchMode;
import org.hibernate.criterion.Restrictions;
import br.edu.CEI.vraptor.model.employee.Employee;

public class EmployeeRepository extends RepositorioGenerico {

	public EmployeeRepository() {
		super(Employee.class);
	}

	public void save (Employee employee) {

		EntityManager em = ConnectionFactory.getEntityManager();
		em.getTransaction().begin();
		//Tem que vim encriptografado do Controller...---------
		//employee.setPassword(Encryption.criptografar(employee.getPassword()));
		
		try {
			em.persist(employee);
			em.getTransaction().commit();
		} catch (Exception e) {
			em.getTransaction().rollback();
		}

		em.close();

	}

	public void update(Employee employee) {

		EntityManager em = ConnectionFactory.getEntityManager();
		em.getTransaction().begin();
		
		try {
			em.merge(employee);
			em.getTransaction().commit();
		} catch (Exception e) {
			em.getTransaction().rollback();
		}

		em.close();

	}

	public void delete(Employee employee) {

		EntityManager em = ConnectionFactory.getEntityManager();
		em.getTransaction().begin();

		try {
			employee = em.find(Employee.class, employee.getCode());
			em.remove(employee);
			em.getTransaction().commit();
		} catch (Exception e) {
			em.getTransaction().rollback();
		}

		em.close();

	}

	public List<Employee> searchForName(String name) {

		Criteria c = getCriteria();

			Criterion c1 = Restrictions.ilike("name", name, MatchMode.START);
			c.add(c1);
			return c.setResultTransformer(Criteria.DISTINCT_ROOT_ENTITY).list();
		
	}
	
	public Employee searchForName2 (String name) {

		Criteria c = getCriteria();

		Criterion c1 = Restrictions.ilike("name", name, MatchMode.START);
		c.add(c1);
		return (Employee) c.setResultTransformer(Criteria.DISTINCT_ROOT_ENTITY).uniqueResult();
	}
	
	public Employee searchForPhone(String phone) {

		Criteria c = getCriteria();

		c.add(Restrictions.eq("phone", phone));

		return (Employee) c.uniqueResult();

	}
	
	public Employee searchForCpf(int cpf) {

		Criteria c = getCriteria();

		c.add(Restrictions.eq("cpf", cpf));

		return (Employee) c.uniqueResult();

	}

	public Employee validation(String cpf, String pwd) {

		Criteria c = getCriteria();

		Criterion c1 = Restrictions.eq("cpf", cpf);
		Criterion c2 = Restrictions.eq("password", pwd);
		Criterion c3 = Restrictions.and(c1, c2);
		c.add(c3);

		return (Employee) c.uniqueResult();

	}
	
	
	
	
	
	
	
	
}
