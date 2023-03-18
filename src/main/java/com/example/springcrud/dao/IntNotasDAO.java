package com.example.springcrud.dao;

import com.example.springcrud.model.Alumno;

import java.util.List;

public interface IntNotasDAO {
    List<Alumno> getNotas();

    void insertNota(Alumno alumno);

    void deleteNota(int id);

    void editNota(int id, Alumno alumno);

    List<Alumno> searchNotas(String search);
}
