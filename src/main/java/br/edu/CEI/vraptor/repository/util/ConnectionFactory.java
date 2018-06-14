package br.edu.CEI.vraptor.repository.util;

import javax.persistence.EntityManager;
import javax.persistence.EntityManagerFactory;
import javax.persistence.Persistence;

public class ConnectionFactory {

    static private EntityManagerFactory factory
            = Persistence.createEntityManagerFactory("OrmPU");

    private ConnectionFactory() {
    }

    public static EntityManager getEntityManager() {
        return factory.createEntityManager();
    }

    public static void close() {
        factory.close();
    }

}
