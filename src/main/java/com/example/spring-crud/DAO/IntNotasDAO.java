package com.example.ConexionBBDD.DAO;

import com.example.ConexionBBDD.Model.Alumno;

import java.util.List;

public interface IntNotasDAO {
    List<Alumno> getNotas();

    void insertNota(Alumno alumno);

    void deleteNota(int id);

    void editNota(int id, Alumno alumno);
}
