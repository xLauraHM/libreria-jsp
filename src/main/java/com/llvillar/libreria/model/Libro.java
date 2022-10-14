
package com.llvillar.libreria.model;

import java.util.Date;

public class Libro {

    private String isbn;
    private String titulo;
    private String autor;
    private Date fecha;

    public Libro() {
    }
    public Libro(String isbn) {
        this.isbn = isbn;
    }
    public String getIsbn() {
        return isbn;
    }
    public void setIsbn(String isbn) {
        this.isbn = isbn;
    }
    public String getTitulo() {
        return titulo;
    }
    public void setTitulo(String titulo) {
        this.titulo = titulo;
    }
    public String getAutor() {
        return autor;
    }
    public void setAutor(String autor) {
        this.autor = autor;
    }
    public Date getFecha() {
        return fecha;
    }
    public void setFecha(Date fecha) {
        this.fecha = fecha;
    }
 
}
