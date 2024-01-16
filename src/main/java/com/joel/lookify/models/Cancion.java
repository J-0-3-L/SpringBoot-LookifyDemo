package com.joel.lookify.models;

import java.util.Date;

import org.springframework.format.annotation.DateTimeFormat;

import jakarta.persistence.Column;
import jakarta.persistence.Entity;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.GenerationType;
import jakarta.persistence.Id;
import jakarta.persistence.PrePersist;
import jakarta.persistence.PreUpdate;
import jakarta.persistence.Table;
import jakarta.validation.constraints.Max;
import jakarta.validation.constraints.Min;
import jakarta.validation.constraints.NotBlank;
import jakarta.validation.constraints.NotNull;
import jakarta.validation.constraints.Size;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;

@Entity
@Table(name="canciones")
@Getter
@Setter
@NoArgsConstructor
public class Cancion {
    
    @Id
    @GeneratedValue( strategy = GenerationType.IDENTITY)
    private Long id;

    @NotNull
    @NotBlank
    @Size(min = 5)
    private String titulo;

    @NotNull
    @NotBlank
    @Size(min = 5)
    private String artista;

    @NotNull
    @Min(1)
    @Max(10)
    private int clasificacion;

    @NotNull
    @Column(updatable = false)
    @DateTimeFormat(pattern = "yyyy-MM-dd")
    private Date createdAt;

    @DateTimeFormat(pattern = "yyyy-MM-dd")
    private Date updatedAt;

    @PrePersist
    protected void onCreate(){
        this.createdAt=new Date();
    }

    @PreUpdate
    protected void onUpdate(){
        this.updatedAt=new Date();
    }
}
