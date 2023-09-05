

<%@page import="com.umariana.mundo.Video"%>
<%@page import="java.util.ArrayList"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<!DOCTYPE html>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>JSP Page</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-4bw+/aepP/YC94hEpVNVgiZdgIC5+VKNBQNGCHeKRQN+PtmoHDEXuppvnDJzQIu9" crossorigin="anonymous">
    <style>
        
        body {
            background-color: bisque; /* color de fondo*/
            font-family: Helvetica,  Brutalism; 
            padding: 20px;
        }
        body {
            background-image: url('https://th.bing.com/th/id/R.86a69e9c0ee71453664aaaa9fc8e589b?rik=p%2bMJua4jUJFOog&pid=ImgRaw&r=0'); 
            background-size: cover; /* Ayuda a Ajusta la imagen al tamaño de nuestra */
            background-repeat: no-repeat; /* Ayuda para que nuestra imagen no se repita */
            background-attachment: fixed; /* Ayuda a la Fijacion de la imagen para que no se desplace con el contenido */
        }
    </style>
</head>

<body>
    <div class="container">
        <h1>Listar Videos</h1>
       

        <%
            // OBTENER EL ARRAYLIST DE LA SOLICITUD
            ArrayList<Video> misVideos = (ArrayList<Video>) request.getAttribute("misVideos");

            // Mostrar los datos del array
            for (Video v : misVideos) {
                out.println("idVideo" + v.getIdVideo() + "<br>");
                out.println("Titulo" + v.getTitulo() + "<br>");
                out.println("Autor" + v.getAutor() + "<br>");
                out.println("Aniho" + v.getAniho() + "<br>");
                out.println("Categoria" + v.getCategoria() + "<br>");
                out.println("Url" + v.getUrl() + "<br>");
                out.println("Letra" + v.getLetra() + "<br>");

            }
        %>
    </div>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.1/dist/js/bootstrap.bundle.min.js" integrity="sha384-HwwvtgBNo3bZJJLYd8oVXjrBZt8cqVSpeBNS5n7C8IVInixGAoxmnlMuBnhbgrkm" crossorigin="anonymous"></script>
</body>
</html>
