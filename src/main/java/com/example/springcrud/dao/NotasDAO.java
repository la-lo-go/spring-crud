package com.example.springcrud.dao;

import com.example.springcrud.model.Alumno;

import jakarta.persistence.EntityManager;
import jakarta.persistence.PersistenceContext;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import java.util.List;

@Repository
@Transactional
public class NotasDAO implements IntNotasDAO {

    @PersistenceContext
    EntityManager entityManager;

    @Override
    public List<Alumno> getNotas() {
        String query = "FROM Alumno";
        return entityManager.createQuery(query).getResultList();
    }

    @Override
    public List<Alumno> searchNotas(String search) {
        String query = "FROM Alumno WHERE nombre LIKE '%"+search+"%' OR apellidos LIKE '%"+search+"%'";
        return entityManager.createQuery(query).getResultList();
    }

    @Override
    public void insertNota(Alumno alumno) {
       entityManager.persist(alumno);
    }

    @Override
    public void deleteNota(int id) {
        Alumno alumno = entityManager.find(Alumno.class, id);
        entityManager.remove(alumno);
    }

    public void editNota(int id, Alumno alumno) {
        Alumno alumnoExtra = entityManager.find(Alumno.class, id);
        alumnoExtra.setNombre(alumno.getNombre());
        alumnoExtra.setApellidos(alumno.getApellidos());
        alumnoExtra.setNota(alumno.getNota());
        entityManager.flush();
    }
}
