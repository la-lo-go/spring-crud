package com.example.ConexionBBDD.Controlador;

import com.example.ConexionBBDD.DAO.NotasDAO;
import com.example.ConexionBBDD.Model.Alumno;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.*;

import java.util.List;

@RestController
public class NotasControlador {
    @Autowired
    private NotasDAO notasDAO;

    @GetMapping("/notas")
    public List<Alumno> getNotas(){
        return notasDAO.getNotas();
    }

    @PostMapping ("/insertar")
    public void insertNota(@RequestBody Alumno alumno){
        notasDAO.insertNota(alumno);
    }

    @PostMapping("/modificar-nota/{id}")
    public void editNota(@PathVariable int id, @RequestBody Alumno alumno){
        System.out.println("id: " + id);
        notasDAO.editNota(id, alumno);
    }

    @DeleteMapping("/notas/{id}")
    public void deleteNota(@PathVariable int id){
        notasDAO.deleteNota(id);
    }

}
