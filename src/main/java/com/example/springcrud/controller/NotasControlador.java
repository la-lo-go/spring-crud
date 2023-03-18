package com.example.springcrud.controller;

import com.example.springcrud.dao.NotasDAO;
import com.example.springcrud.model.Alumno;
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

    @GetMapping("/search")
    public List<Alumno> searchNotas(@RequestParam String search){
        return notasDAO.searchNotas(search);
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
