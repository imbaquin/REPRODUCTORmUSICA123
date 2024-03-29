package com.umariana.mundo;

import java.io.Serializable;

/**
 *
 * @author sebastian imbaquin
 */
public class Video implements Serializable {
    private int idVideo;
    private String titulo;
    private String autor;
    private String aniho;
    private String categoria;
    private String url;
    private String letra;

    public Video(int idVideo, String titulo, String autor, String aniho, String categoria, String url, String letra) {
        this.idVideo = idVideo;
        this.titulo = titulo;
        this.autor = autor;
        this.aniho = aniho;
        this.categoria = categoria;
        this.url = url;
        this.letra = letra;
    }

    public Video() {
    }
    

    public int getIdVideo() {
        return idVideo;
    }

    public void setIdVideo(int idVideo) {
        this.idVideo = idVideo;
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

    public String getAniho() {
        return aniho;
    }

    public void setAniho(String aniho) {
        this.aniho = aniho;
    }

    public String getCategoria() {
        return categoria;
    }

    public void setCategoria(String categoria) {
        this.categoria = categoria;
    }

    public String getUrl() {
        return url;
    }

    public void setUrl(String url) {
        this.url = url;
    }

    public String getLetra() {
        return letra;
    }

    public void setLetra(String letra) {
        this.letra = letra;
    }
    
    
}