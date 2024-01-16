package com.joel.lookify.repositories;

import java.util.List;
import org.springframework.data.repository.CrudRepository;

import com.joel.lookify.models.Cancion;

public interface CancionRepository extends CrudRepository <Cancion,Long> {

    List<Cancion> findTop10ByOrderByClasificacionDesc();

    List<Cancion> findByArtista(String artista);
    
}
