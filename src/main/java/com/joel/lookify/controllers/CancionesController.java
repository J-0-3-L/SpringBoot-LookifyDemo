package com.joel.lookify.controllers;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.joel.lookify.models.Cancion;
import com.joel.lookify.repositories.CancionRepository;

@Controller
public class CancionesController {

    @Autowired
    private CancionRepository cancionRepository;

    // Principal
    @GetMapping("/")
    public String inicio() {
        return "index";
    }

    // Mostrar All
    @GetMapping("/dashboard")
    public String dashboard(Model model, @ModelAttribute("music") Cancion cancion) {
        model.addAttribute("musics", cancionRepository.findAll());
        return "look";
    }

    // Mostrar for ID
    @GetMapping("/songs/{id}")
    public String viewId(@PathVariable Long id, Model model) {
        Cancion cancion = cancionRepository.findById(id).orElse(null);
        model.addAttribute("music", cancion);
        return "details";
    }

    // Create
    @GetMapping("/songs/new")
    public String showAddSongForm(Model model) {
        model.addAttribute("music", new Cancion());
        return "addSong";
    }

    @PostMapping("/songs/new")
    public String addSong(@ModelAttribute("music") Cancion cancion) {
        cancionRepository.save(cancion);
        return "redirect:/dashboard";
    }

    // Buscador
    @GetMapping("/search/topTen")
    public String topTen(Model model) {
        List<Cancion> topTenSong = cancionRepository.findTop10ByOrderByClasificacionDesc();
        model.addAttribute("musics", topTenSong);
        return "topSong";
    }

    //Buscador por artista
    @GetMapping("/buscar")
    public String buscar(Model model , @RequestParam("artista") String artista){
        List<Cancion> cancion = cancionRepository.findByArtista(artista);
        model.addAttribute("musics", cancion);
        return "search";
    }

    @PostMapping("/buscar")
    public String buscarPost(Model model , @RequestParam("artista") String artista){
        List<Cancion> cancion = cancionRepository.findByArtista(artista);
        model.addAttribute("musics", cancion);
        return "search";
    }

    // Eliminar
    @GetMapping("/eliminar/{id}")
    public String deletMusic(@PathVariable Long id) {
        cancionRepository.deleteById(id);
        return "redirect:/dashboard";
    }

}
